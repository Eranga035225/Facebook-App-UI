import '../models/post_model.dart';
import '../models/story_model.dart';

class DemoData {

  static List<StoryModel> stories = [

    StoryModel(profilePicture: '', story: ''),

  

    StoryModel(profilePicture: 'https://th.bing.com/th/id/OIP.GjQkNLBt1b2rykCqh4paZwHaLI?w=122&h=184&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
    story:  'https://tse2.mm.bing.net/th/id/OIF.idtfdp4PhY5F3hiUfDkSDg?rs=1&pid=ImgDetMain&o=7&rm=3'
    ),
      StoryModel(profilePicture: 'https://th.bing.com/th/id/OIP.DnQq__W5pibltm9H65jDLQHaE8?w=301&h=201&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3',
    story:  'https://tse4.mm.bing.net/th/id/OIP.BebOSO8kVsOm7f2BfAnb4gHaJO?rs=1&pid=ImgDetMain&o=7&rm=3'
    ),

    StoryModel(profilePicture:'https://th.bing.com/th/id/OIP.kfM6gE5n_IxPxrdgZg7SigHaLH?w=116&h=183&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3' ,
     story: 'https://tse4.mm.bing.net/th/id/OIP.1BLgvKRl81t03VsPZpifdgHaNN?rs=1&pid=ImgDetMain&o=7&rm=3')







  ];

  static String profilePic = 'https://tse1.mm.bing.net/th/id/OIP.5E1nwnhAzODo8pYnFvKtXgHaHa?rs=1&pid=ImgDetMain&o=7&rm=3';


  static List<PostModel> posts = [

    PostModel(name: 'John Doe', profilePicture: 'https://th.bing.com/th/id/OIF.uyJ39PISgwNXYM0eN7IO9A?w=212&h=212&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', time: '10 minutes ago', postImage: 'https://th.bing.com/th/id/OIF.jF3cBEGCDSphdEbnIeX5YA?w=314&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', caption: 'Exploring the world', reacts: 12, commentCount: 4 ),
    PostModel(name: 'Lucas Stephan', profilePicture: 'https://th.bing.com/th/id/OIP.LenuNeUTPfv5N1rDjVWwuQHaLH?w=130&h=195&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', time: '18 minutes ago', postImage: 'https://th.bing.com/th/id/OIP.Nz39MBctbcL6_jhJ59wBpAHaHa?w=177&h=186&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', reacts: 123, commentCount: 44,caption: 'Just be Cool bro !!' ),
    PostModel(name: 'Sara Yuki', profilePicture: 'https://th.bing.com/th/id/OIP.H_Apy5HtxvhtWVS622dBMgHaLH?w=115&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', time: '1 hour ago', postImage: 'https://th.bing.com/th/id/OIP.DnQq__W5pibltm9H65jDLQHaE8?w=258&h=180&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3', reacts: 244, commentCount: 112, caption: 'Embaracing the World'),

  ];




}
