.class Lcom/parse/ParseCommandCache;
.super Lcom/parse/ParseEventuallyQueue;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseCommandCache"

.field private static filenameCounter:I

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private cachePath:Ljava/io/File;

.field private final httpClient:Lcom/parse/ParseHttpClient;

.field listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

.field private log:Ljava/util/logging/Logger;

.field private maxCacheSizeBytes:I

.field notifier:Lcom/parse/ConnectivityNotifier;

.field private pendingTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "La/k",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private running:Z

.field private final runningLock:Ljava/lang/Object;

.field private shouldStop:Z

.field private timeoutMaxRetries:I

.field private timeoutRetryWaitSeconds:D

.field private unprocessedCommandsExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/parse/ParseCommandCache;->filenameCounter:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/parse/ParseEventuallyQueue;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    const-wide v0, 0x4082c00000000000L    # 600.0

    iput-wide v0, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    new-instance v0, Lcom/parse/ParseCommandCache$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseCommandCache$1;-><init>(Lcom/parse/ParseCommandCache;)V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {p0, v2}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->running:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/parse/ParseCommandCache;->httpClient:Lcom/parse/ParseHttpClient;

    const-string v0, "com.parse.ParseCommandCache"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/parse/ParseCommandCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->isConnected(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->getNotifier(Landroid/content/Context;)Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v0, p0, Lcom/parse/ParseCommandCache;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->resume()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parse/ParseCommandCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/parse/ParseCommandCache;->runLoop()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;ZLcom/parse/ParseObject;)La/j;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseRESTCommand;",
            "Z",
            "Lcom/parse/ParseObject;",
            ")",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x5

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1}, Lcom/parse/Parse;->requirePermission(Ljava/lang/String;)V

    new-instance v3, La/k;

    invoke-direct {v3}, La/k;-><init>()V

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/parse/ParseRESTCommand;->setLocalId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseRESTCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    array-length v1, v4

    iget v2, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    if-le v1, v2, :cond_3

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v0

    if-lt v11, v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v1, "Unable to save command for later because it\'s too big."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v6}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    invoke-static {v5}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v1

    if-lt v11, v1, :cond_2

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "UTF-8 isn\'t supported.  This shouldn\'t happen."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    invoke-virtual {p0, v6}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    invoke-static {v5}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v7, v6

    move v1, v0

    move v2, v0

    :goto_1
    if-ge v1, v7, :cond_4

    aget-object v8, v6, v1

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    add-int/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    array-length v1, v4

    add-int/2addr v1, v2

    iget v2, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    if-le v1, v2, :cond_8

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v0

    if-lt v11, v0, :cond_5

    iget-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v1, "Unable to save command for later because storage is full."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    :try_start_3
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v2

    if-lt v11, v2, :cond_7

    iget-object v2, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v7, "Deleting old commands to make room in command cache."

    invoke-virtual {v2, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_7
    move v2, v1

    :goto_2
    iget v1, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    if-le v2, v1, :cond_8

    array-length v1, v6

    if-ge v0, v1, :cond_8

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    add-int/lit8 v1, v0, 0x1

    aget-object v0, v6, v0

    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v0, v8

    sub-int v0, v2, v0

    invoke-direct {p0, v7}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    move v2, v0

    move v0, v1

    goto :goto_2

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x10

    new-array v1, v1, [C

    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_3
    sget v0, Lcom/parse/ParseCommandCache;->filenameCounter:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/parse/ParseCommandCache;->filenameCounter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x8

    if-ge v2, v6, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x8

    new-array v2, v2, [C

    const/16 v6, 0x30

    invoke-static {v2, v6}, Ljava/util/Arrays;->fill([CC)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CachedCommand_"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/parse/ParseRESTCommand;->retainLocalIds()V

    invoke-static {v0, v4}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->unprocessedCommandsExist:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v3}, La/k;->a()La/j;

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v1

    if-lt v11, v1, :cond_a

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Unable to save command for later."

    invoke-virtual {v1, v2, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_a
    :try_start_6
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_b
    move-object v1, v0

    goto/16 :goto_3
.end method

.method private static getCacheDir()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CommandCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static getPendingCount()I
    .locals 2

    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/parse/ParseCommandCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private maybeRunAllCommandsNow(I)V
    .locals 12

    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->unprocessedCommandsExist:Z

    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v0, v4

    if-nez v0, :cond_2

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_14

    aget-object v0, v4, v2

    new-instance v6, Ljava/io/File;

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-direct {v6, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v6}, Lcom/parse/ParseFileUtils;->readFileToJSONObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :try_start_3
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/k;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/parse/ParseCommandCache;->commandFromJSON(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    :try_start_5
    invoke-static {v1}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v1

    if-eqz v0, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, La/k;->b(Ljava/lang/Object;)V

    :cond_3
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    :goto_3
    invoke-direct {p0, v1}, Lcom/parse/ParseCommandCache;->waitForTaskWithoutLock(La/j;)Ljava/lang/Object;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, La/k;->a()La/j;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseCommandCache;->waitForTaskWithoutLock(La/j;)Ljava/lang/Object;

    :cond_4
    invoke-direct {p0, v6}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V
    :try_end_5
    .catch Lcom/parse/ParseException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    :try_start_6
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v6

    if-lt v1, v6, :cond_5

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "File disappeared from cache while being read."

    invoke-virtual {v1, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v1, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v7

    if-lt v1, v7, :cond_6

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Unable to read contents of file in cache."

    invoke-virtual {v1, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    invoke-direct {p0, v6}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v1, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v7

    if-lt v1, v7, :cond_7

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Error parsing JSON found in cache."

    invoke-virtual {v1, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    invoke-direct {p0, v6}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :catch_3
    move-exception v0

    const/4 v1, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v7

    if-lt v1, v7, :cond_9

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Unable to create ParseCommand from JSON."

    invoke-virtual {v1, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    invoke-direct {p0, v6}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :cond_a
    :try_start_7
    iget-object v7, p0, Lcom/parse/ParseCommandCache;->httpClient:Lcom/parse/ParseHttpClient;

    invoke-virtual {v1, v7}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)La/j;

    move-result-object v7

    new-instance v8, Lcom/parse/ParseCommandCache$4;

    invoke-direct {v8, p0, v1, v0}, Lcom/parse/ParseCommandCache$4;-><init>(Lcom/parse/ParseCommandCache;Lcom/parse/ParseRESTCommand;La/k;)V

    invoke-virtual {v7, v8}, La/j;->b(La/h;)La/j;
    :try_end_7
    .catch Lcom/parse/ParseException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    goto :goto_3

    :catch_4
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v1

    const/16 v7, 0x64

    if-ne v1, v7, :cond_12

    if-lez p1, :cond_11

    const/4 v0, 0x4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v1

    if-lt v0, v1, :cond_b

    iget-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network timeout in command cache. Waiting for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " seconds and then retrying "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " times."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    double-to-long v6, v6

    add-long/2addr v6, v0

    :cond_c
    :goto_5
    cmp-long v8, v0, v6

    if-gez v8, :cond_10

    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-boolean v8, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-eqz v8, :cond_f

    :cond_d
    const/4 v0, 0x4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v1

    if-lt v0, v1, :cond_e

    iget-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v1, "Aborting wait because runEventually thread should stop."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_e
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :cond_f
    :try_start_9
    sget-object v8, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    sub-long v0, v6, v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_6
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v8, v10

    double-to-long v8, v8

    sub-long v8, v6, v8

    cmp-long v8, v0, v8

    if-gez v8, :cond_c

    iget-wide v0, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v8

    double-to-long v0, v0

    sub-long v0, v6, v0

    goto :goto_5

    :catch_5
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    goto :goto_6

    :cond_10
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    goto/16 :goto_4

    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    goto/16 :goto_4

    :cond_12
    const/4 v1, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v7

    if-lt v1, v7, :cond_13

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v8, "Failed to run command."

    invoke-virtual {v1, v7, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    invoke-direct {p0, v6}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(ILjava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_14
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0
.end method

.method private removeFile(Ljava/io/File;)V
    .locals 2

    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Lcom/parse/ParseFileUtils;->readFileToJSONObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->commandFromJSON(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->releaseLocalIds()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private runLoop()V
    .locals 8

    const/4 v7, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v0

    if-lt v7, v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v3, "Parse command cache has started processing queued commands."

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v0, :cond_2

    monitor-exit v3

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    if-eqz v0, :cond_9

    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget v0, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    invoke-direct {p0, v0}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v0, :cond_3

    :try_start_3
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->unprocessedCommandsExist:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_3
    :goto_3
    :try_start_4
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v4, 0x6

    :try_start_8
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v5

    if-lt v4, v5, :cond_5

    iget-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v6, "saveEventually thread had an error."

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_5
    :try_start_9
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    iget-boolean v1, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v1, :cond_8

    :cond_8
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_9
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_a
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v0

    if-lt v7, v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v1, "saveEventually thread has stopped processing commands."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0
.end method

.method private waitForTaskWithoutLock(La/j;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<TT;>;)TT;"
        }
    .end annotation

    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, La/g;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v2, v0}, La/g;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/parse/ParseCommandCache$3;

    invoke-direct {v0, p0, v2}, Lcom/parse/ParseCommandCache$3;-><init>(Lcom/parse/ParseCommandCache;La/g;)V

    sget-object v3, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v0, v3}, La/j;->a(La/h;Ljava/util/concurrent/Executor;)La/j;

    :goto_0
    invoke-virtual {v2}, La/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    invoke-static {p1}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseRESTCommand;",
            "Lcom/parse/ParseObject;",
            ")",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseCommandCache;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;ZLcom/parse/ParseObject;)La/j;

    move-result-object v0

    return-object v0
.end method

.method fakeObjectUpdate()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseCommandCache;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->removeListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    return-void
.end method

.method public pause()V
    .locals 3

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v0, :cond_0

    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void
.end method

.method public pendingCount()I
    .locals 1

    invoke-static {}, Lcom/parse/ParseCommandCache;->getPendingCount()I

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 3

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/parse/ParseCommandCache$2;

    const-string v2, "ParseCommandCache.runLoop()"

    invoke-direct {v0, p0, v2}, Lcom/parse/ParseCommandCache$2;-><init>(Lcom/parse/ParseCommandCache;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public setConnected(Z)V
    .locals 2

    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->isConnected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseEventuallyQueue;->setConnected(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxCacheSizeBytes(I)V
    .locals 2

    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutMaxRetries(I)V
    .locals 2

    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutRetryWaitSeconds(D)V
    .locals 3

    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method simulateReboot()V
    .locals 2

    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
