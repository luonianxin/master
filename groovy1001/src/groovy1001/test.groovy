	Map<String,Object> params1=new HashMap<String,Object>();
		//结果数据写入
		Boolean FOKORNG=0;
		FOKORNG=0;
		
		long time=255530;
			
			double minute=time/60000;//耗时时长(分钟)
			params1.put("FHSTIME", minute);//耗时时长(分钟)
			params1.put("FC2","item.getAt(0)");//电池编号
			params1.put("FDCWZ","item.getAt(1)");//电池位置
			params1.put("FYCCS","item.getAt(2)");//异常次数
//			params1.put("FC3", "eJSON.FGDID");//所属工段
//			params1.put("FC4","eJSON.FCXID" );//所属产线
//			params1.put("FNUM","eJSON.FNUM" );//计划单号
//			params1.put("FGS","eJSON.gs");//产量个数
//			
//			params1.put("FEID", "eid");//设备编号
//			params1.put("FUID", "uid");//员工
//			params1.put("FSBPDZT","FOKORNG" )//设备判定质量状态
//			params1.put("FGYYG","dataJSON.GYINFO.FGYYG" )//工艺人员
//			params1.put("FVERSION","dataJSON.GYINFO.FVERSION" )//工艺版本号
//			params1.put("FSYDH","dataJSON.getString(test)" )//实验单号
//			params1.put("FGYID","dataJSON.GYINFO.FGYID");//工艺编号
//			params1.put("FMODSN","eJSON.FCXH");//产品型号
//			params1.put("FWRITETIME",new Date() );//数据存储时间
//			params1.put("FEXP","eJSON.FEXP");//质保期
//			params1.put("ID1",1);//ID1
//			//
//			params1.put("FTPBH","dataJSON.outSN");//托盘编号
//			params1.put("FLZBH","dataJSON.prop.stove" );//炉子编号
//			params1.put("FSHL","dataJSON.prop.water" );//水含量
//			params1.put("FI1","dataJSON.prop.ngtypecode" );//NG原因(代码)
//			params1.put("FCNGYY","eJSON.FCNGYY");//NG原因
//			params1.put("FIG1","dataJSON.prop.FIG1" );//呼吸次数
//			//********************************************1-1
			
			 Object []  AXX1=params1.keySet();
			 String AXX2="";		//数据库表的属性列
			 for (int i=0;i<AXX1.size();i++){
				 if(i==AXX1.size()-1){
					 AXX2=AXX2+AXX1[i];
				 }
				 else{
					 AXX2=AXX2+AXX1[i]+",";
				 }
			 }
			 String AXX3="";		
			 for (int i=0;i<AXX1.size();i++){
				 if(i==0){
					 AXX3=AXX3+":"+AXX1[i]+",:";
				 }
				 else{
					 if(i!=AXX1.size()-1){
						 AXX3=AXX3+AXX1[i]+",:";
					 }
					 else{
						 AXX3=AXX3+AXX1[i];
					 }
				 }
			 }
			 Object []  AXX4=AXX3.split(',');
			 String AXX5="";
			 for (int i=0;i<AXX1.size();i++){
				 if(AXX4[i]=="FC2"){
					 
				 }
				 else{
					 if(i==AXX1.size()-1){
						 AXX5=AXX5+AXX1[i]+"="+AXX4[i];
					 }
					 else{
						 AXX5=AXX5+AXX1[i]+"="+AXX4[i]+",";
					 }
				 }
			 }
			 //插入ok表--1
			 String inserokSql="insert into "+" ok_table "+" ("+AXX2+") values ("+AXX3+")";
			 //插入NG表--2
			 String inserngSql="insert into "+" ng_table "+" ("+AXX2+") values ("+AXX3+")";
			 System.out.println(inserokSql);
			 System.out.println(inserngSql);