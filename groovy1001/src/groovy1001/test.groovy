	Map<String,Object> params1=new HashMap<String,Object>();
		//�������д��
		Boolean FOKORNG=0;
		FOKORNG=0;
		
		long time=255530;
			
			double minute=time/60000;//��ʱʱ��(����)
			params1.put("FHSTIME", minute);//��ʱʱ��(����)
			params1.put("FC2","item.getAt(0)");//��ر��
			params1.put("FDCWZ","item.getAt(1)");//���λ��
			params1.put("FYCCS","item.getAt(2)");//�쳣����
//			params1.put("FC3", "eJSON.FGDID");//��������
//			params1.put("FC4","eJSON.FCXID" );//��������
//			params1.put("FNUM","eJSON.FNUM" );//�ƻ�����
//			params1.put("FGS","eJSON.gs");//��������
//			
//			params1.put("FEID", "eid");//�豸���
//			params1.put("FUID", "uid");//Ա��
//			params1.put("FSBPDZT","FOKORNG" )//�豸�ж�����״̬
//			params1.put("FGYYG","dataJSON.GYINFO.FGYYG" )//������Ա
//			params1.put("FVERSION","dataJSON.GYINFO.FVERSION" )//���հ汾��
//			params1.put("FSYDH","dataJSON.getString(test)" )//ʵ�鵥��
//			params1.put("FGYID","dataJSON.GYINFO.FGYID");//���ձ��
//			params1.put("FMODSN","eJSON.FCXH");//��Ʒ�ͺ�
//			params1.put("FWRITETIME",new Date() );//���ݴ洢ʱ��
//			params1.put("FEXP","eJSON.FEXP");//�ʱ���
//			params1.put("ID1",1);//ID1
//			//
//			params1.put("FTPBH","dataJSON.outSN");//���̱��
//			params1.put("FLZBH","dataJSON.prop.stove" );//¯�ӱ��
//			params1.put("FSHL","dataJSON.prop.water" );//ˮ����
//			params1.put("FI1","dataJSON.prop.ngtypecode" );//NGԭ��(����)
//			params1.put("FCNGYY","eJSON.FCNGYY");//NGԭ��
//			params1.put("FIG1","dataJSON.prop.FIG1" );//��������
//			//********************************************1-1
			
			 Object []  AXX1=params1.keySet();
			 String AXX2="";		//���ݿ���������
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
			 //����ok��--1
			 String inserokSql="insert into "+" ok_table "+" ("+AXX2+") values ("+AXX3+")";
			 //����NG��--2
			 String inserngSql="insert into "+" ng_table "+" ("+AXX2+") values ("+AXX3+")";
			 System.out.println(inserokSql);
			 System.out.println(inserngSql);