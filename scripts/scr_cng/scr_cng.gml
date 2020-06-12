l = argument0
name = "";
oe = true
randomize()
switch(l)
{
	case 3:
	{
		name += choose("d", "m", "p", "t", "r", "w", "l", "e", "n", "h", "b", "g", "k")
		name += choose("o", "i", "a", "e", "u")
		name += choose("d", "m", "p", "t", "r", "j", "n", "x", "b", "g", "k")
		break;
	}
	case 4:
	{
		name += choose("d", "m", "p", "t", "r", "w", "l", "e", "n", "h", "b", "g", "k")
		name += choose("o", "i", "a", "e", "u")
		name += choose("d", "m", "s", "y", "r", "w", "l", "n", "h", "v", "j", "k")
		name += choose("o", "i", "a", "e", "u")
		break;
	}
	case 5:
	{
		var t1 = choose("o", "i", "a", "e", "u")
		var t2 = choose("d", "m", "s", "y", "r", "w", "l", "n", "h", "v", "j", "k")
		
		name += choose("d", "m", "p", "t", "r", "w", "l", "e", "n", "h", "b", "g", "k")
		var tnm = choose(t1,t2,t2)
		name += tnm
		if tnm == t1
		{
			name += t2	
			name += t2	
		}
		else
		{
			var tnm = choose(t1,t2)
			name += tnm
			if tnm == t1
			{
				name += t2	
			}
			else
			{
				name += t1	
			}
		}
		name += choose("d", "m", "p", "t", "r", "j", "n", "x", "b", "g", "k")
		break;
	}
}
name += " "
l++
l++
switch(l)
{
	case 3:
	{
		name += choose("d", "m", "p", "t", "r", "w", "l", "e", "n", "h", "b", "g", "k")
		name += choose("o", "i", "a", "e", "u")
		name += choose("d", "m", "p", "t", "r", "j", "n", "x", "b", "g", "k")
		break;
	}
	case 4:
	{
		name += choose("d", "m", "p", "t", "r", "w", "l", "e", "n", "h", "b", "g", "k")
		name += choose("o", "i", "a", "e", "u")
		name += choose("d", "m", "s", "y", "r", "w", "l", "n", "h", "v", "j", "k")
		name += choose("o", "i", "a", "e", "u")
		break;
	}
	case 5:
	{
		var t1 = choose("o", "i", "a", "e", "u")
		var t2 = choose("d", "m", "s", "y", "r", "w", "l", "n", "h", "v", "j", "k")
		var t3 = choose(choose("d", "m", "s", "y", "r", "w", "l", "n", "h", "v", "j", "k"),choose("o", "i", "a", "e", "u"))
		
		name += choose("d", "m", "p", "t", "r", "w", "l", "e", "n", "h", "b", "g", "k")
		var tnm = choose(t1,t2,t3)
		name += tnm
		if tnm == t1
		{
			name += t2	
			name += t3	
		}
		else
		{
			var tnm = choose(t1,t3)
			name += tnm
			if tnm == t1
			{
				name += t3	
			}
			else
			{
				name += t1	
			}
		}
		name += choose("d", "m", "p", "t", "r", "j", "n", "x", "b", "g", "k")
		break;
	}
	default:
	{
		for(var i = l;i>0;i--)
		{
			randomize()
			if oe == true
			{
				name += choose("an", "le", "po", "th", "fy", "wo", "bo", "el", "le", "ph", "na", "tr", "ty")
				oe = !oe
			}
			else if oe == false
			{
				name += choose("di", "ni", "lo", "ba", "ra", "do", "nu", "ro", "mi", "ga")
				oe = !oe
			}
		}
	}
}
return(name)
