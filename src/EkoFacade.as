package mvc{
	import mvc.controller.EkoCommand;
	import org.puremvc.as3.patterns.facade.Facade;
	import org.puremvc.as3.interfaces.IFacade;
	
	public class EkoFacade extends Facade implements IFacade 
	{
		public static const STARTUP:String = "startup";
		public static const CHANGETEXT:String = "changetext";
		public function EkoFacade() 
		{
			
		}
		public static function getInstance():EkoFacade//获取单例
		{
			if(instance==null)
			{
				instance=new EkoFacade();
			}
			return instance as EkoFacade;
		}
		//注册Command，建立Command与Notification之间的映射
		override protected function initializeController():void
		{
			super.initializeController();
			registerCommand(STARTUP, EkoCommand);//注册启动时响应的Command
		}
		public function startup(_main:Main):void//回顾文档类中的startup()：将文档类作为参数传入其中
		{
			sendNotification(STARTUP, _main);//发送启动的Notification，传递文档类
		}
		
	}
	
}