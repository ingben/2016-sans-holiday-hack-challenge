.class Lcom/parse/CachedCurrentUserController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/ParseCurrentUserController;


# instance fields
.field currentUser:Lcom/parse/ParseUser;

.field currentUserMatchesDisk:Z

.field private final mutex:Ljava/lang/Object;

.field private final store:Lcom/parse/ParseObjectStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseObjectStore",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation
.end field

.field private final taskQueue:Lcom/parse/TaskQueue;


# direct methods
.method public constructor <init>(Lcom/parse/ParseObjectStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObjectStore",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/CachedCurrentUserController;->taskQueue:Lcom/parse/TaskQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    iput-object p1, p0, Lcom/parse/CachedCurrentUserController;->store:Lcom/parse/ParseObjectStore;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/CachedCurrentUserController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseObjectStore;
    .locals 1

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->store:Lcom/parse/ParseObjectStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseUser;
    .locals 1

    invoke-direct {p0}, Lcom/parse/CachedCurrentUserController;->lazyLogIn()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method private lazyLogIn()Lcom/parse/ParseUser;
    .locals 2

    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->getAuthData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "anonymous"

    invoke-virtual {p0, v1, v0}, Lcom/parse/CachedCurrentUserController;->lazyLogIn(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearFromDisk()V
    .locals 2

    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->store:Lcom/parse/ParseObjectStore;

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

    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

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

    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

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

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentUserController$2;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentUserController$2;-><init>(Lcom/parse/CachedCurrentUserController;)V

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/CachedCurrentUserController;->getAsync(Z)La/j;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Z)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "La/j",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentUserController$5;

    invoke-direct {v1, p0, p1}, Lcom/parse/CachedCurrentUserController$5;-><init>(Lcom/parse/CachedCurrentUserController;Z)V

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

.method public getCurrentSessionTokenAsync()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/CachedCurrentUserController;->getAsync(Z)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/CachedCurrentUserController$3;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentUserController$3;-><init>(Lcom/parse/CachedCurrentUserController;)V

    invoke-virtual {v0, v1}, La/j;->c(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isCurrent(Lcom/parse/ParseObject;)Z
    .locals 1

    check-cast p1, Lcom/parse/ParseUser;

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController;->isCurrent(Lcom/parse/ParseUser;)Z

    move-result v0

    return v0
.end method

.method public isCurrent(Lcom/parse/ParseUser;)Z
    .locals 2

    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

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

.method lazyLogIn(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseUser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ParseUser;"
        }
    .end annotation

    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/parse/ParseUser;->setIsCurrentUser(Z)V

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    iput-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public logOutAsync()La/j;
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

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentUserController$4;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentUserController$4;-><init>(Lcom/parse/CachedCurrentUserController;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAsync(Lcom/parse/ParseObject;)La/j;
    .locals 1

    check-cast p1, Lcom/parse/ParseUser;

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController;->setAsync(Lcom/parse/ParseUser;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public setAsync(Lcom/parse/ParseUser;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentUserController$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/CachedCurrentUserController$1;-><init>(Lcom/parse/CachedCurrentUserController;Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public setIfNeededAsync(Lcom/parse/ParseUser;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController;->setAsync(Lcom/parse/ParseUser;)La/j;

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
