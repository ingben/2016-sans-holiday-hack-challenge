.class public Lcom/northpolewonderland/santagram/Configs;
.super Landroid/app/Application;


# static fields
.field public static ACTIVITY_CLASS_NAME:Ljava/lang/String;

.field public static ACTIVITY_CURRENT_USER:Ljava/lang/String;

.field public static ACTIVITY_OTHER_USER:Ljava/lang/String;

.field public static ACTIVITY_TEXT:Ljava/lang/String;

.field public static COMMENTS_CLASS_NAME:Ljava/lang/String;

.field public static COMMENTS_COMMENT:Ljava/lang/String;

.field public static COMMENTS_CREATED_AT:Ljava/lang/String;

.field public static COMMENTS_POST_POINTER:Ljava/lang/String;

.field public static COMMENTS_USER_POINTER:Ljava/lang/String;

.field public static FOLLOW_A_USER:Ljava/lang/String;

.field public static FOLLOW_CLASS_NAME:Ljava/lang/String;

.field public static FOLLOW_IS_FOLLOWING:Ljava/lang/String;

.field public static LIKES_CLASS_NAME:Ljava/lang/String;

.field public static LIKES_CREATED_AT:Ljava/lang/String;

.field public static LIKES_LIKED_BY:Ljava/lang/String;

.field public static LIKES_POST_LIKED:Ljava/lang/String;

.field public static PARSE_APP_KEY:Ljava/lang/String;

.field public static PARSE_CLIENT_KEY:Ljava/lang/String;

.field public static POSTS_CITY:Ljava/lang/String;

.field public static POSTS_CLASSE_NAME:Ljava/lang/String;

.field public static POSTS_CREATED_AT:Ljava/lang/String;

.field public static POSTS_IMAGE:Ljava/lang/String;

.field public static POSTS_IS_REPORTED:Ljava/lang/String;

.field public static POSTS_KEYWORDS:Ljava/lang/String;

.field public static POSTS_LIKES:Ljava/lang/String;

.field public static POSTS_REPORT_MESSAGE:Ljava/lang/String;

.field public static POSTS_TEXT:Ljava/lang/String;

.field public static POSTS_TEXT_LOWERCASE:Ljava/lang/String;

.field public static POSTS_USER_POINTER:Ljava/lang/String;

.field public static REPORT_EMAIL_ADDRESS:Ljava/lang/String;

.field public static USER_ABOUT_ME:Ljava/lang/String;

.field public static USER_AVATAR:Ljava/lang/String;

.field public static USER_CLASS_NAME:Ljava/lang/String;

.field public static USER_COVER_IMAGE:Ljava/lang/String;

.field public static USER_EMAIL:Ljava/lang/String;

.field public static USER_FULLNAME:Ljava/lang/String;

.field public static USER_IS_REPORTED:Ljava/lang/String;

.field public static USER_PUSH_ID:Ljava/lang/String;

.field public static USER_USERNAME:Ljava/lang/String;

.field public static colorsArray:[Ljava/lang/String;


# instance fields
.field isParseInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "report@example.com"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->REPORT_EMAIL_ADDRESS:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "#52861C"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "#72A83B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "#99CC66"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "#4F9F77"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#2E8357"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "#15693E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "#4F9F77"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "#C66386"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#831B40"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#A3395F"

    aput-object v2, v0, v1

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->colorsArray:[Ljava/lang/String;

    const-string v0, "ciy248KmH8uo8efusuTQ"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->PARSE_APP_KEY:Ljava/lang/String;

    const-string v0, "kC2jgdZT3IGYQ9ZlNflY"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->PARSE_CLIENT_KEY:Ljava/lang/String;

    const-string v0, "_User"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->USER_CLASS_NAME:Ljava/lang/String;

    const-string v0, "username"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->USER_USERNAME:Ljava/lang/String;

    const-string v0, "email"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->USER_EMAIL:Ljava/lang/String;

    const-string v0, "avatar"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->USER_AVATAR:Ljava/lang/String;

    const-string v0, "coverImage"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->USER_COVER_IMAGE:Ljava/lang/String;

    const-string v0, "fullName"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->USER_FULLNAME:Ljava/lang/String;

    const-string v0, "aboutMe"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->USER_ABOUT_ME:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->USER_PUSH_ID:Ljava/lang/String;

    const-string v0, "isReported"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->USER_IS_REPORTED:Ljava/lang/String;

    const-string v0, "Posts"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_CLASSE_NAME:Ljava/lang/String;

    const-string v0, "postText"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_TEXT:Ljava/lang/String;

    const-string v0, "textLowercase"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_TEXT_LOWERCASE:Ljava/lang/String;

    const-string v0, "keywords"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_KEYWORDS:Ljava/lang/String;

    const-string v0, "postUser"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_USER_POINTER:Ljava/lang/String;

    const-string v0, "postImageFile"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_IMAGE:Ljava/lang/String;

    const-string v0, "city"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_CITY:Ljava/lang/String;

    const-string v0, "likes"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_LIKES:Ljava/lang/String;

    const-string v0, "isReported"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_IS_REPORTED:Ljava/lang/String;

    const-string v0, "reportMessage"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_REPORT_MESSAGE:Ljava/lang/String;

    const-string v0, "createdAt"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->POSTS_CREATED_AT:Ljava/lang/String;

    const-string v0, "Likes"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->LIKES_CLASS_NAME:Ljava/lang/String;

    const-string v0, "likedBy"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->LIKES_LIKED_BY:Ljava/lang/String;

    const-string v0, "postLiked"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->LIKES_POST_LIKED:Ljava/lang/String;

    const-string v0, "createdAt"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->LIKES_CREATED_AT:Ljava/lang/String;

    const-string v0, "Follow"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_CLASS_NAME:Ljava/lang/String;

    const-string v0, "aUser"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_A_USER:Ljava/lang/String;

    const-string v0, "isFollowing"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->FOLLOW_IS_FOLLOWING:Ljava/lang/String;

    const-string v0, "Activity"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_CLASS_NAME:Ljava/lang/String;

    const-string v0, "currentUser"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_CURRENT_USER:Ljava/lang/String;

    const-string v0, "otherUser"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_OTHER_USER:Ljava/lang/String;

    const-string v0, "text"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->ACTIVITY_TEXT:Ljava/lang/String;

    const-string v0, "Comments"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_CLASS_NAME:Ljava/lang/String;

    const-string v0, "postPointer"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_POST_POINTER:Ljava/lang/String;

    const-string v0, "userPointer"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_USER_POINTER:Ljava/lang/String;

    const-string v0, "comment"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_COMMENT:Ljava/lang/String;

    const-string v0, "createdAt"

    sput-object v0, Lcom/northpolewonderland/santagram/Configs;->COMMENTS_CREATED_AT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/northpolewonderland/santagram/Configs;->isParseInitialized:Z

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/northpolewonderland/santagram/Configs;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/northpolewonderland/santagram/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/northpolewonderland/santagram/Configs;->isParseInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/parse/Parse$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/parse/Parse$Configuration$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->PARSE_APP_KEY:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/Parse$Configuration$Builder;->applicationId(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    sget-object v1, Lcom/northpolewonderland/santagram/Configs;->PARSE_CLIENT_KEY:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/Parse$Configuration$Builder;->clientKey(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    const-string v1, "https://www.northpolewonderland.com/parse"

    invoke-virtual {v0, v1}, Lcom/parse/Parse$Configuration$Builder;->server(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/Parse$Configuration$Builder;->build()Lcom/parse/Parse$Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->initialize(Lcom/parse/Parse$Configuration;)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/parse/Parse;->setLogLevel(I)V

    invoke-static {}, Lcom/parse/ParseUser;->enableAutomaticUser()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/northpolewonderland/santagram/Configs;->isParseInitialized:Z

    :cond_0
    return-void
.end method
