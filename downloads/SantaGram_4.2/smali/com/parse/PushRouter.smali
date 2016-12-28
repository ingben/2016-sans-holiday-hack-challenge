.class Lcom/parse/PushRouter;
.super Ljava/lang/Object;


# static fields
.field private static final LEGACY_STATE_LOCATION:Ljava/lang/String; = "pushState"

.field private static MAX_HISTORY_LENGTH:I = 0x0

.field private static final STATE_LOCATION:Ljava/lang/String; = "push"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePushRouter"

.field private static instance:Lcom/parse/PushRouter;


# instance fields
.field private final diskState:Ljava/io/File;

.field private final history:Lcom/parse/PushHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/parse/PushRouter;->MAX_HISTORY_LENGTH:I

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lcom/parse/PushHistory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/PushRouter;->diskState:Ljava/io/File;

    iput-object p2, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/parse/PushRouter;
    .locals 5

    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "push"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParsePlugins;->getParseDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "pushState"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget v3, Lcom/parse/PushRouter;->MAX_HISTORY_LENGTH:I

    invoke-static {v0, v2, v3}, Lcom/parse/PushRouter;->pushRouterFromState(Ljava/io/File;Ljava/io/File;I)Lcom/parse/PushRouter;

    move-result-object v0

    sput-object v0, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    :cond_0
    sget-object v0, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static pushRouterFromState(Ljava/io/File;Ljava/io/File;I)Lcom/parse/PushRouter;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/parse/PushRouter;->readJSONFileQuietly(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "history"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/parse/PushHistory;

    invoke-direct {v2, p2, v0}, Lcom/parse/PushHistory;-><init>(ILorg/json/JSONObject;)V

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/parse/PushHistory;->getLastReceivedTimestamp()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {p1}, Lcom/parse/PushRouter;->readJSONFileQuietly(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v0, "lastTime"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/parse/PushHistory;->setLastReceivedTimestamp(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    new-instance v1, Lcom/parse/PushRouter;

    invoke-direct {v1, p0, v2}, Lcom/parse/PushRouter;-><init>(Ljava/io/File;Lcom/parse/PushHistory;)V

    if-eqz v0, :cond_2

    invoke-direct {v1}, Lcom/parse/PushRouter;->saveStateToDisk()V

    invoke-static {p1}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static readJSONFileQuietly(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseFileUtils;->readFileToJSONObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static declared-synchronized resetInstance()V
    .locals 4

    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "push"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized saveStateToDisk()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parse/PushRouter;->diskState:Ljava/io/File;

    invoke-virtual {p0}, Lcom/parse/PushRouter;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseFileUtils;->writeJSONObjectToFile(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :goto_1
    :try_start_1
    const-string v1, "com.parse.ParsePushRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error when serializing push state to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/PushRouter;->diskState:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getLastReceivedTimestamp()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v0}, Lcom/parse/PushHistory;->getLastReceivedTimestamp()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handlePush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v1, p1, p2}, Lcom/parse/PushHistory;->tryInsertPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/parse/PushRouter;->saveStateToDisk()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.parse.Channel"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_2

    const-string v1, "com.parse.Data"

    const-string v2, "{}"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.parse.push.intent.RECEIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "com.parse.Data"

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "history"

    iget-object v2, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v2}, Lcom/parse/PushHistory;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
