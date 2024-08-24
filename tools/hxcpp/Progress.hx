package;

class Progress {
	public var current:Int;
	public var total:Int;

	public function new(inCurrent:Int, inTotal:Int) {
		current = inCurrent;
		total = inTotal;
	}

	public function progress(inCurrent:Int) {
		current += inCurrent;
	}

	public function getProgress(greaterThanZero:Bool):String {
		var percent = current / total;
		var pct = Std.int(percent * 1000) / 10;
		var str = Std.string(pct);
		if (Std.int(pct) == pct) {
			str += ".0";
		}
		// while (str.length < 4)
		// 	str = " " + str;

		if (str == "99.9") {
			str = "COMPLETED";
		}

		if (greaterThanZero) {
			return "[" + str + "% -";
		}
		else {
			return "[" + str + "%]";
		}

		return "";
	}
}
