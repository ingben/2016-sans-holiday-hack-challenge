.class Lcom/parse/OfflineStore$OfflineEncoder$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$OfflineEncoder;->whenFinished()La/j;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$OfflineEncoder;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$OfflineEncoder;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$OfflineEncoder$1;->this$1:Lcom/parse/OfflineStore$OfflineEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncoder$1;->this$1:Lcom/parse/OfflineStore$OfflineEncoder;

    # getter for: Lcom/parse/OfflineStore$OfflineEncoder;->tasksLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/OfflineStore$OfflineEncoder;->access$000(Lcom/parse/OfflineStore$OfflineEncoder;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncoder$1;->this$1:Lcom/parse/OfflineStore$OfflineEncoder;

    # getter for: Lcom/parse/OfflineStore$OfflineEncoder;->tasks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/parse/OfflineStore$OfflineEncoder;->access$100(Lcom/parse/OfflineStore$OfflineEncoder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/j;

    invoke-virtual {v0}, La/j;->e()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, La/j;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    monitor-exit v1

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncoder$1;->this$1:Lcom/parse/OfflineStore$OfflineEncoder;

    # getter for: Lcom/parse/OfflineStore$OfflineEncoder;->tasks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/parse/OfflineStore$OfflineEncoder;->access$100(Lcom/parse/OfflineStore$OfflineEncoder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$OfflineEncoder$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
