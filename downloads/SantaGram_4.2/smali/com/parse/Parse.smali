.class public Lcom/parse/Parse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/Parse$ParseCallbacks;,
        Lcom/parse/Parse$Configuration;
    }
.end annotation


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x3

.field public static final LOG_LEVEL_ERROR:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x4

.field public static final LOG_LEVEL_NONE:I = 0x7fffffff

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x5

.field private static final MUTEX:Ljava/lang/Object;

.field private static final MUTEX_CALLBACKS:Ljava/lang/Object;

.field private static final PARSE_APPLICATION_ID:Ljava/lang/String; = "com.parse.APPLICATION_ID"

.field private static final PARSE_CLIENT_KEY:Ljava/lang/String; = "com.parse.CLIENT_KEY"

.field private static callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/Parse$ParseCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

.field private static interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private static isLocalDatastoreEnabled:Z

.field private static offlineStore:Lcom/parse/OfflineStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic access$800(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;
    .locals 1

    invoke-static {p0}, Lcom/parse/Parse;->getEventuallyQueue(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    return-object v0
.end method

.method public static addParseNetworkInterceptor(Lcom/parse/a/d;)V
    .locals 2

    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`Parse#addParseNetworkInterceptor(ParseNetworkInterceptor)` must be invoked before `Parse#initialize(Context)`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    :cond_1
    sget-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static allParsePushIntentReceiversInternal()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.parse.push.intent.RECEIVE"

    aput-object v3, v0, v1

    const-string v3, "com.parse.push.intent.DELETE"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "com.parse.push.intent.OPEN"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getIntentReceivers([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static checkCacheApplicationId()V
    .locals 8

    sget-object v1, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->applicationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/parse/Parse;->getParseCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v0, "applicationId"

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v5, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v4, v6

    new-array v4, v4, [B

    invoke-virtual {v5, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    :try_start_2
    invoke-static {v3}, Lcom/parse/ParseFileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    :try_start_3
    new-instance v0, Ljava/io/File;

    const-string v4, "applicationId"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v0, "UTF-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_2
    :try_start_5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_0

    :catch_5
    move-exception v4

    goto :goto_0
.end method

.method static checkContext()V
    .locals 2

    invoke-static {}, Lcom/parse/ParsePlugins$Android;->get()Lcom/parse/ParsePlugins$Android;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins$Android;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationContext is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static checkInit()V
    .locals 2

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->applicationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationId is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->clientKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clientKey is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private static collectParseCallbacks()[Lcom/parse/Parse$ParseCallbacks;
    .locals 3

    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/parse/Parse$ParseCallbacks;

    sget-object v2, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/Parse$ParseCallbacks;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static destroy()V
    .locals 3

    sget-object v1, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    const/4 v2, 0x0

    sput-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->onDestroy()V

    :cond_0
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->reset()V

    invoke-static {}, Lcom/parse/ParsePlugins;->reset()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static disableLocalDatastore()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/Parse;->setLocalDatastore(Lcom/parse/OfflineStore;)V

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->reset()V

    return-void
.end method

.method private static dispatchOnParseInitialized()V
    .locals 4

    invoke-static {}, Lcom/parse/Parse;->collectParseCallbacks()[Lcom/parse/Parse$ParseCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/parse/Parse$ParseCallbacks;->onParseInitialized()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static enableLocalDatastore(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`Parse#enableLocalDatastore(Context)` must be invoked before `Parse#initialize(Context)`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    return-void
.end method

.method static externalVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "a1.13.1"

    return-object v0
.end method

.method static getApplicationContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    invoke-static {}, Lcom/parse/ParsePlugins$Android;->get()Lcom/parse/ParsePlugins$Android;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins$Android;->applicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;
    .locals 1

    invoke-static {}, Lcom/parse/ParsePlugins$Android;->get()Lcom/parse/ParsePlugins$Android;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins$Android;->applicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->getEventuallyQueue(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    return-object v0
.end method

.method private static getEventuallyQueue(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;
    .locals 4

    sget-object v1, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v2

    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    instance-of v0, v0, Lcom/parse/ParseCommandCache;

    if-nez v0, :cond_1

    :cond_0
    if-nez v2, :cond_2

    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    instance-of v0, v0, Lcom/parse/ParsePinningEventuallyQueue;

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v3

    if-eqz v2, :cond_3

    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue;

    invoke-direct {v0, p0, v3}, Lcom/parse/ParsePinningEventuallyQueue;-><init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V

    :goto_0
    sput-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/parse/ParseCommandCache;->getPendingCount()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/parse/ParseCommandCache;

    invoke-direct {v0, p0, v3}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V

    :cond_2
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    monitor-exit v1

    return-object v0

    :cond_3
    new-instance v0, Lcom/parse/ParseCommandCache;

    invoke-direct {v0, p0, v3}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getLocalDatastore()Lcom/parse/OfflineStore;
    .locals 1

    sget-object v0, Lcom/parse/Parse;->offlineStore:Lcom/parse/OfflineStore;

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    invoke-static {}, Lcom/parse/PLog;->getLogLevel()I

    move-result v0

    return v0
.end method

.method static getParseCacheDir()Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getParseCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    sget-object v1, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getParseDir()Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->getParseDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getParseFilesDir()Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getParseFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    sget-object v1, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static hasPermission(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/parse/Parse$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/parse/Parse$Configuration$Builder;-><init>(Landroid/content/Context;)V

    # getter for: Lcom/parse/Parse$Configuration$Builder;->applicationId:Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/Parse$Configuration$Builder;->access$200(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ApplicationId not defined. You must provide ApplicationId in AndroidManifest.xml.\n<meta-data\n    android:name=\"com.parse.APPLICATION_ID\"\n    android:value=\"<Your Application Id>\" />"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    # getter for: Lcom/parse/Parse$Configuration$Builder;->clientKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/Parse$Configuration$Builder;->access$300(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ClientKey not defined. You must provide ClientKey in AndroidManifest.xml.\n<meta-data\n    android:name=\"com.parse.CLIENT_KEY\"\n    android:value=\"<Your Client Key>\" />"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/parse/Parse$Configuration$Builder;->setNetworkInterceptors(Ljava/util/Collection;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    # invokes: Lcom/parse/Parse$Configuration$Builder;->setLocalDatastoreEnabled(Z)Lcom/parse/Parse$Configuration$Builder;
    invoke-static {v0, v1}, Lcom/parse/Parse$Configuration$Builder;->access$700(Lcom/parse/Parse$Configuration$Builder;Z)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/Parse$Configuration$Builder;->build()Lcom/parse/Parse$Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->initialize(Lcom/parse/Parse$Configuration;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/parse/Parse$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/parse/Parse$Configuration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/parse/Parse$Configuration$Builder;->applicationId(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/parse/Parse$Configuration$Builder;->clientKey(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    sget-object v1, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/parse/Parse$Configuration$Builder;->setNetworkInterceptors(Ljava/util/Collection;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    # invokes: Lcom/parse/Parse$Configuration$Builder;->setLocalDatastoreEnabled(Z)Lcom/parse/Parse$Configuration$Builder;
    invoke-static {v0, v1}, Lcom/parse/Parse$Configuration$Builder;->access$700(Lcom/parse/Parse$Configuration$Builder;Z)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/Parse$Configuration$Builder;->build()Lcom/parse/Parse$Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->initialize(Lcom/parse/Parse$Configuration;)V

    return-void
.end method

.method public static initialize(Lcom/parse/Parse$Configuration;)V
    .locals 4

    iget-boolean v0, p0, Lcom/parse/Parse$Configuration;->localDataStoreEnabled:Z

    sput-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    iget-object v0, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/parse/Parse$Configuration;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/Parse$Configuration;->clientKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/parse/ParsePlugins$Android;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/parse/Parse$Configuration;->server:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/parse/ParseRESTCommand;->server:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/parse/ParseHttpClient;->setKeepAlive(Z)V

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/parse/ParseHttpClient;->setMaxConnections(I)V

    iget-object v1, p0, Lcom/parse/Parse$Configuration;->interceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parse/Parse$Configuration;->interceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/parse/Parse$Configuration;->interceptors:Ljava/util/List;

    invoke-static {v1}, Lcom/parse/Parse;->initializeParseHttpClientsWithParseNetworkInterceptors(Ljava/util/List;)V

    :cond_0
    invoke-static {}, Lcom/parse/ParseObject;->registerParseSubclasses()V

    iget-boolean v1, p0, Lcom/parse/Parse$Configuration;->localDataStoreEnabled:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/parse/OfflineStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/parse/Parse;->offlineStore:Lcom/parse/OfflineStore;

    :goto_0
    invoke-static {}, Lcom/parse/Parse;->checkCacheApplicationId()V

    iget-object v1, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    new-instance v2, Lcom/parse/Parse$1;

    invoke-direct {v2, v1}, Lcom/parse/Parse$1;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, La/j;->a(Ljava/util/concurrent/Callable;)La/j;

    invoke-static {}, Lcom/parse/ParseFieldOperations;->registerDefaultDecoders()V

    invoke-static {}, Lcom/parse/Parse;->allParsePushIntentReceiversInternal()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "To prevent external tampering to your app\'s notifications, all receivers registered to handle the following actions must have their exported attributes set to false: com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, com.parse.push.intent.DELETE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/parse/ParseKeyValueCache;->initialize(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/GcmRegistrar;->registerAsync()La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/Parse$3;

    invoke-direct {v2}, Lcom/parse/Parse$3;-><init>()V

    invoke-virtual {v1, v2}, La/j;->b(La/h;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/Parse$2;

    invoke-direct {v2}, Lcom/parse/Parse$2;-><init>()V

    sget-object v3, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v3}, La/j;->a(La/h;Ljava/util/concurrent/Executor;)La/j;

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    sget-object v2, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    if-ne v1, v2, :cond_3

    invoke-static {v0}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lcom/parse/Parse;->dispatchOnParseInitialized()V

    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static initializeParseHttpClientsWithParseNetworkInterceptors(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/a/d;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseCorePlugins;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseFileController;->awsClient()Lcom/parse/ParseHttpClient;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseHttpClient;

    new-instance v1, Lcom/parse/ParseDecompressInterceptor;

    invoke-direct {v1}, Lcom/parse/ParseDecompressInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lcom/parse/ParseHttpClient;->addInternalInterceptor(Lcom/parse/a/d;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/a/d;

    invoke-virtual {v0, v1}, Lcom/parse/ParseHttpClient;->addExternalInterceptor(Lcom/parse/a/d;)V

    goto :goto_0
.end method

.method static isInitialized()Z
    .locals 1

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLocalDatastoreEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    return v0
.end method

.method static registerParseCallbacks(Lcom/parse/Parse$ParseCallbacks;)V
    .locals 2

    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must register callbacks before Parse.initialize(Context)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v0, :cond_1

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeParseNetworkInterceptor(Lcom/parse/a/d;)V
    .locals 2

    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`Parse#addParseNetworkInterceptor(ParseNetworkInterceptor)` must be invoked before `Parse#initialize(Context)`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static requirePermission(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use this functionality, add this to your AndroidManifest.xml:\n<uses-permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static setLocalDatastore(Lcom/parse/OfflineStore;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    sput-object p0, Lcom/parse/Parse;->offlineStore:Lcom/parse/OfflineStore;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLogLevel(I)V
    .locals 0

    invoke-static {p0}, Lcom/parse/PLog;->setLogLevel(I)V

    return-void
.end method

.method static unregisterParseCallbacks(Lcom/parse/Parse$ParseCallbacks;)V
    .locals 2

    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
