.class Lcom/parse/ParseCurrentConfigController$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCurrentConfigController;->getCurrentConfigAsync()La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/parse/ParseConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCurrentConfigController;


# direct methods
.method constructor <init>(Lcom/parse/ParseCurrentConfigController;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseCurrentConfigController$2;->this$0:Lcom/parse/ParseCurrentConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/parse/ParseConfig;
    .locals 3

    iget-object v0, p0, Lcom/parse/ParseCurrentConfigController$2;->this$0:Lcom/parse/ParseCurrentConfigController;

    # getter for: Lcom/parse/ParseCurrentConfigController;->currentConfigMutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/ParseCurrentConfigController;->access$000(Lcom/parse/ParseCurrentConfigController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCurrentConfigController$2;->this$0:Lcom/parse/ParseCurrentConfigController;

    iget-object v0, v0, Lcom/parse/ParseCurrentConfigController;->currentConfig:Lcom/parse/ParseConfig;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseCurrentConfigController$2;->this$0:Lcom/parse/ParseCurrentConfigController;

    invoke-virtual {v0}, Lcom/parse/ParseCurrentConfigController;->getFromDisk()Lcom/parse/ParseConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseCurrentConfigController$2;->this$0:Lcom/parse/ParseCurrentConfigController;

    if-eqz v0, :cond_1

    :goto_0
    iput-object v0, v2, Lcom/parse/ParseCurrentConfigController;->currentConfig:Lcom/parse/ParseConfig;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/parse/ParseCurrentConfigController$2;->this$0:Lcom/parse/ParseCurrentConfigController;

    iget-object v0, v0, Lcom/parse/ParseCurrentConfigController;->currentConfig:Lcom/parse/ParseConfig;

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/parse/ParseConfig;

    invoke-direct {v0}, Lcom/parse/ParseConfig;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseCurrentConfigController$2;->call()Lcom/parse/ParseConfig;

    move-result-object v0

    return-object v0
.end method
