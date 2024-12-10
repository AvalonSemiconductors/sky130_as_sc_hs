import java.io.*;

public class ConvertToLib {
	public static void insertTimings(BufferedWriter bw, String name, double[] index1, double[] index2, double[][] timings) throws Exception {
		bw.write("\t");
		bw.write(name);
		bw.write(" (\"del_1_7_7\") {");
		bw.newLine();
		bw.write("\t\tindex_1(\"");
		for(int i = 0; i < 7; i++) {
			bw.write(Double.toString(index1[i]));
			if(i != 6) bw.write(", ");
		}
		bw.write("\");");
		bw.newLine();
		bw.write("\t\tindex_2(\"");
		for(int i = 0; i < 7; i++) {
			bw.write(Double.toString(index2[i]));
			if(i != 6) bw.write(", ");
		}
		bw.write("\");");
		bw.newLine();
		bw.write("\t\tvalues(");
		for(int i = 0; i < 7; i++) {
			bw.write("\"");
			for(int j = 0; j < 7; j++) {
				bw.write(Double.toString(timings[i][j]));
				if(j != 6) bw.write(", ");
			}
			bw.write("\"");
			if(i != 6) {
				bw.write(", \\");
				bw.newLine();
				bw.write("\t\t\t");
			}
		}
		bw.write(");");
		bw.newLine();
		bw.write("\t}");
		bw.newLine();
	}
	
	public static void main(String[] args) {
		try {
			BufferedReader br = new BufferedReader(new FileReader(new File(args[0])));
			BufferedWriter bw = new BufferedWriter(new FileWriter(new File("lib_output.txt")));
			String temp = br.readLine();
			if(temp == null || !temp.equals("BEGIN")) {
				System.err.println("Bad format");
				System.exit(1);
			}
			br.readLine();
			double[] index1 = new double[7];
			double[] index2 = new double[7];
			for(int i = 0; i < 7; i++) index1[i] = Double.parseDouble(br.readLine());
			br.readLine();
			for(int i = 0; i < 7; i++) index2[i] = Double.parseDouble(br.readLine());
			for(int i = 1; i < 7; i++) if(index1[i] <= index1[i - 1] || index2[i] <= index2[i - 1]) {
				System.err.println("Bad format");
				System.exit(1);
			}
			double[][] rise_times = new double[7][7];
			double[][] fall_times = new double[7][7];
			double[][] rise_delays = new double[7][7];
			double[][] fall_delays = new double[7][7];
			while(true) {
				String signalName = br.readLine();
				if(signalName == null) break;
				if(!br.readLine().equals("rise_time, fall_time, rise_delay, fall_delay")) {
					System.err.println("Bad format");
					System.exit(1);
				}
				for(int i = 0; i < 7; i++) {
					for(int j = 0; j < 7; j++) {
						temp = br.readLine();
						String[] parts = temp.split(", ");
						if(parts.length != 4) {
							System.err.println("Bad format");
							System.exit(1);
						}
						rise_times[i][j] = Double.parseDouble(parts[0]) * 1000000000;
						fall_times[i][j] = Double.parseDouble(parts[1]) * 1000000000;
						rise_delays[i][j] = Double.parseDouble(parts[2]) * 1000000000;
						fall_delays[i][j] = Double.parseDouble(parts[3]) * 1000000000;
					}
				}
				bw.write("timing () {");
				bw.newLine();
				insertTimings(bw, "cell_fall", index1, index2, fall_times);
				insertTimings(bw, "cell_rise", index1, index2, rise_times);
				insertTimings(bw, "fall_transition", index1, index2, fall_delays);
				insertTimings(bw, "rise_transition", index1, index2, rise_delays);
				bw.write("\trelated_pin : \"");
				bw.write(signalName);
				bw.write("\";");
				bw.newLine();
				bw.write("\ttiming_sense : \"negative_unate\";");
				bw.newLine();
				bw.write("\ttiming_type : \"combinational\";");
				bw.newLine();
				bw.write("}");
				bw.newLine();
			}
			bw.close();
			br.close();
		}catch(Exception e) {
			e.printStackTrace();
			System.exit(1);
		}
	}
	
}
