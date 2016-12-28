.class Lcom/parse/ParsePlugins$Android;
.super Lcom/parse/ParsePlugins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParsePlugins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Android"
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/parse/ParsePlugins;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParsePlugins$1;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method static get()Lcom/parse/ParsePlugins$Android;
    .locals 1

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePlugins$Android;

    return-object v0
.end method

.method static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/parse/ParsePlugins$Android;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/ParsePlugins$Android;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/parse/ParsePlugins;->set(Lcom/parse/ParsePlugins;)V

    return-void
.end method


# virtual methods
.method applicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method getCacheDir()Ljava/io/File;
    .locals 4

    iget-object v1, p0, Lcom/parse/ParsePlugins$Android;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.parse"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parse/ParsePlugins$Android;->cacheDir:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->cacheDir:Ljava/io/File;

    # invokes: Lcom/parse/ParsePlugins;->createFileDir(Ljava/io/File;)Ljava/io/File;
    invoke-static {v0}, Lcom/parse/ParsePlugins;->access$300(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getFilesDir()Ljava/io/File;
    .locals 4

    iget-object v1, p0, Lcom/parse/ParsePlugins$Android;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->filesDir:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.parse"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parse/ParsePlugins$Android;->filesDir:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->filesDir:Ljava/io/File;

    # invokes: Lcom/parse/ParsePlugins;->createFileDir(Ljava/io/File;)Ljava/io/File;
    invoke-static {v0}, Lcom/parse/ParsePlugins;->access$300(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getParseDir()Ljava/io/File;
    .locals 4

    iget-object v1, p0, Lcom/parse/ParsePlugins$Android;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->parseDir:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    const-string v2, "Parse"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePlugins$Android;->parseDir:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins$Android;->parseDir:Ljava/io/File;

    # invokes: Lcom/parse/ParsePlugins;->createFileDir(Ljava/io/File;)Ljava/io/File;
    invoke-static {v0}, Lcom/parse/ParsePlugins;->access$300(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newHttpClient()Lcom/parse/ParseHttpClient;
    .locals 2

    new-instance v0, Landroid/net/SSLSessionCache;

    iget-object v1, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x2710

    invoke-static {v1, v0}, Lcom/parse/ParseHttpClient;->createClient(ILandroid/net/SSLSessionCache;)Lcom/parse/ParseHttpClient;

    move-result-object v0

    return-object v0
.end method

.method userAgent()Ljava/lang/String;
    .locals 4

    const-string v0, "unknown"

    :try_start_0
    iget-object v1, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParsePlugins$Android;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse Android SDK 1.13.1 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") API Level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
