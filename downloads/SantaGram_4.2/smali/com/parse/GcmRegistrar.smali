.class Lcom/parse/GcmRegistrar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/GcmRegistrar$Request;,
        Lcom/parse/GcmRegistrar$Singleton;
    }
.end annotation


# static fields
.field private static final ERROR_EXTRA:Ljava/lang/String; = "error"

.field private static final FILENAME_DEVICE_TOKEN_LAST_MODIFIED:Ljava/lang/String; = "deviceTokenLastModified"

.field private static final PARSE_SENDER_ID:Ljava/lang/String; = "1076345567071"

.field public static final REGISTER_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTER"

.field private static final REGISTRATION_ID_EXTRA:Ljava/lang/String; = "registration_id"

.field private static final SENDER_ID_EXTRA:Ljava/lang/String; = "com.parse.push.gcm_sender_id"

.field private static final TAG:Ljava/lang/String; = "com.parse.GcmRegistrar"


# instance fields
.field private context:Landroid/content/Context;

.field private localDeviceTokenLastModified:J

.field private final localDeviceTokenLastModifiedMutex:Ljava/lang/Object;

.field private final lock:Ljava/lang/Object;

.field private request:Lcom/parse/GcmRegistrar$Request;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/GcmRegistrar;->localDeviceTokenLastModifiedMutex:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    iput-object v1, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/GcmRegistrar;)La/j;
    .locals 1

    invoke-direct {p0}, Lcom/parse/GcmRegistrar;->sendRegistrationRequestAsync()La/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/GcmRegistrar;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parse/GcmRegistrar;Lcom/parse/GcmRegistrar$Request;)Lcom/parse/GcmRegistrar$Request;
    .locals 0

    iput-object p1, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parse/GcmRegistrar;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/parse/GcmRegistrar;->localDeviceTokenLastModifiedMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/GcmRegistrar;)J
    .locals 2

    iget-wide v0, p0, Lcom/parse/GcmRegistrar;->localDeviceTokenLastModified:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/parse/GcmRegistrar;J)J
    .locals 1

    iput-wide p1, p0, Lcom/parse/GcmRegistrar;->localDeviceTokenLastModified:J

    return-wide p1
.end method

.method private static actualSenderIDFromExtra(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    check-cast p0, Ljava/lang/String;

    const-string v1, "id:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static deleteLocalDeviceTokenLastModifiedFile()V
    .locals 1

    invoke-static {}, Lcom/parse/GcmRegistrar;->getLocalDeviceTokenLastModifiedFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    return-void
.end method

.method public static getInstance()Lcom/parse/GcmRegistrar;
    .locals 1

    sget-object v0, Lcom/parse/GcmRegistrar$Singleton;->INSTANCE:Lcom/parse/GcmRegistrar;

    return-object v0
.end method

.method private getLocalDeviceTokenLastModifiedAsync()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/GcmRegistrar$5;

    invoke-direct {v0, p0}, Lcom/parse/GcmRegistrar$5;-><init>(Lcom/parse/GcmRegistrar;)V

    sget-object v1, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    return-object v0
.end method

.method static getLocalDeviceTokenLastModifiedFile()Ljava/io/File;
    .locals 3

    const-string v0, "GCMRegistrar"

    invoke-static {v0}, Lcom/parse/Parse;->getParseCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "deviceTokenLastModified"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private sendRegistrationRequestAsync()La/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "1076345567071"

    if-eqz v2, :cond_1

    const-string v3, "com.parse.push.gcm_sender_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/parse/GcmRegistrar;->actualSenderIDFromExtra(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/parse/GcmRegistrar$Request;->createAndSend(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/GcmRegistrar$Request;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    invoke-virtual {v0}, Lcom/parse/GcmRegistrar$Request;->getTask()La/j;

    move-result-object v0

    new-instance v2, Lcom/parse/GcmRegistrar$2;

    invoke-direct {v2, p0}, Lcom/parse/GcmRegistrar$2;-><init>(Lcom/parse/GcmRegistrar;)V

    invoke-virtual {v0, v2}, La/j;->a(La/h;)La/j;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string v3, "com.parse.GcmRegistrar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found com.parse.push.gcm_sender_id <meta-data> element with value \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\", but the value is missing the expected \"id:\" prefix."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method getRequestIdentifier()I
    .locals 2

    iget-object v1, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    # getter for: Lcom/parse/GcmRegistrar$Request;->identifier:I
    invoke-static {v0}, Lcom/parse/GcmRegistrar$Request;->access$300(Lcom/parse/GcmRegistrar$Request;)I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleRegistrationIntentAsync(Landroid/content/Intent;)La/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "registration_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "com.parse.GcmRegistrar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received deviceToken <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> from GCM."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseInstallation;->getDeviceToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    invoke-virtual {v2, v3}, Lcom/parse/ParseInstallation;->setPushType(Lcom/parse/PushType;)V

    invoke-virtual {v2, v1}, Lcom/parse/ParseInstallation;->setDeviceToken(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/parse/ParseInstallation;->saveInBackground()La/j;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/parse/GcmRegistrar;->updateLocalDeviceTokenLastModifiedAsync()La/j;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    invoke-virtual {v2, p1}, Lcom/parse/GcmRegistrar$Request;->onReceiveResponseIntent(Landroid/content/Intent;)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, La/j;->a(Ljava/util/Collection;)La/j;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method isLocalDeviceTokenStaleAsync()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/parse/GcmRegistrar;->getLocalDeviceTokenLastModifiedAsync()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/GcmRegistrar$3;

    invoke-direct {v1, p0}, Lcom/parse/GcmRegistrar$3;-><init>(Lcom/parse/GcmRegistrar;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public registerAsync()La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v0

    sget-object v1, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseInstallation;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_1
    new-instance v3, Lcom/parse/GcmRegistrar$1;

    invoke-direct {v3, p0, v2}, Lcom/parse/GcmRegistrar$1;-><init>(Lcom/parse/GcmRegistrar;Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v3}, La/j;->d(La/h;)La/j;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/GcmRegistrar;->isLocalDeviceTokenStaleAsync()La/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method updateLocalDeviceTokenLastModifiedAsync()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/GcmRegistrar$4;

    invoke-direct {v0, p0}, Lcom/parse/GcmRegistrar$4;-><init>(Lcom/parse/GcmRegistrar;)V

    sget-object v1, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    return-object v0
.end method
