.class Lcom/parse/ParseQuery$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<TTResult;",
        "La/j",
        "<TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

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
            "<TTResult;>;)",
            "La/j",
            "<TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$1800(Lcom/parse/ParseQuery;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    const/4 v2, 0x0

    # setter for: Lcom/parse/ParseQuery;->isRunning:Z
    invoke-static {v0, v2}, Lcom/parse/ParseQuery;->access$1902(Lcom/parse/ParseQuery;Z)Z

    iget-object v0, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->cts:La/k;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$2000(Lcom/parse/ParseQuery;)La/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->cts:La/k;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$2000(Lcom/parse/ParseQuery;)La/k;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, La/k;->a(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    const/4 v2, 0x0

    # setter for: Lcom/parse/ParseQuery;->cts:La/k;
    invoke-static {v0, v2}, Lcom/parse/ParseQuery;->access$2002(Lcom/parse/ParseQuery;La/k;)La/k;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
