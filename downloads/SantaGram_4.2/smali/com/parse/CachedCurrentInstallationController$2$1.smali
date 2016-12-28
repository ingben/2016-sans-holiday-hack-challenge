.class Lcom/parse/CachedCurrentInstallationController$2$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentInstallationController$2;->then(La/j;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Ljava/lang/Void;",
        "La/j",
        "<",
        "Lcom/parse/ParseInstallation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/CachedCurrentInstallationController$2;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentInstallationController$2;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    # getter for: Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/CachedCurrentInstallationController;->access$200(Lcom/parse/CachedCurrentInstallationController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    # getter for: Lcom/parse/CachedCurrentInstallationController;->store:Lcom/parse/ParseObjectStore;
    invoke-static {v0}, Lcom/parse/CachedCurrentInstallationController;->access$100(Lcom/parse/CachedCurrentInstallationController;)Lcom/parse/ParseObjectStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseObjectStore;->getAsync()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/CachedCurrentInstallationController$2$1$1;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentInstallationController$2$1$1;-><init>(Lcom/parse/CachedCurrentInstallationController$2$1;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/j;->a(La/h;Ljava/util/concurrent/Executor;)La/j;

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

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentInstallationController$2$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
