.class Lcom/parse/CachedCurrentInstallationController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/ParseCurrentInstallationController;


# static fields
.field static final TAG:Ljava/lang/String; = "com.parse.CachedCurrentInstallationController"


# instance fields
.field currentInstallation:Lcom/parse/ParseInstallation;

.field private final installationId:Lcom/parse/InstallationId;

.field private final mutex:Ljava/lang/Object;

.field private final store:Lcom/parse/ParseObjectStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseObjectStore",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation
.end field

.field private final taskQueue:Lcom/parse/TaskQueue;


# direct methods
.method public constructor <init>(Lcom/parse/ParseObjectStore;Lcom/parse/InstallationId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObjectStore",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Lcom/parse/InstallationId;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->taskQueue:Lcom/parse/TaskQueue;

    iput-object p1, p0, Lcom/parse/CachedCurrentInstallationController;->store:Lcom/parse/ParseObjectStore;

    iput-object p2, p0, Lcom/parse/CachedCurrentInstallationController;->installationId:Lcom/parse/InstallationId;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/CachedCurrentInstallationController;)Lcom/parse/InstallationId;
    .locals 1

    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->installationId:Lcom/parse/InstallationId;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/CachedCurrentInstallationController;)Lcom/parse/ParseObjectStore;
    .locals 1

    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->store:Lcom/parse/ParseObjectStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/CachedCurrentInstallationController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public clearFromDisk()V
    .locals 2

    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->installationId:Lcom/parse/InstallationId;

    invoke-virtual {v0}, Lcom/parse/InstallationId;->clear()V

    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->store:Lcom/parse/ParseObjectStore;

    invoke-interface {v0}, Lcom/parse/ParseObjectStore;->deleteAsync()La/j;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearFromMemory()V
    .locals 2

    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public existsAsync()La/j;
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

    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentInstallationController$3;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentInstallationController$3;-><init>(Lcom/parse/CachedCurrentInstallationController;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAsync()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentInstallationController$2;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentInstallationController$2;-><init>(Lcom/parse/CachedCurrentInstallationController;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isCurrent(Lcom/parse/ParseInstallation;)Z
    .locals 2

    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

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

.method public bridge synthetic isCurrent(Lcom/parse/ParseObject;)Z
    .locals 1

    check-cast p1, Lcom/parse/ParseInstallation;

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentInstallationController;->isCurrent(Lcom/parse/ParseInstallation;)Z

    move-result v0

    return v0
.end method

.method public setAsync(Lcom/parse/ParseInstallation;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseInstallation;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentInstallationController;->isCurrent(Lcom/parse/ParseInstallation;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentInstallationController$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/CachedCurrentInstallationController$1;-><init>(Lcom/parse/CachedCurrentInstallationController;Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic setAsync(Lcom/parse/ParseObject;)La/j;
    .locals 1

    check-cast p1, Lcom/parse/ParseInstallation;

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentInstallationController;->setAsync(Lcom/parse/ParseInstallation;)La/j;

    move-result-object v0

    return-object v0
.end method
