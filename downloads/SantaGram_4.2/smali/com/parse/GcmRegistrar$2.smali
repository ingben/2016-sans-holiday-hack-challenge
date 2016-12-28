.class Lcom/parse/GcmRegistrar$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/GcmRegistrar;->sendRegistrationRequestAsync()La/j;
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
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/GcmRegistrar;


# direct methods
.method constructor <init>(Lcom/parse/GcmRegistrar;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/GcmRegistrar$2;->this$0:Lcom/parse/GcmRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/GcmRegistrar$2;->then(La/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(La/j;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.parse.GcmRegistrar"

    const-string v2, "Got error when trying to register for GCM push"

    invoke-static {v1, v2, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar$2;->this$0:Lcom/parse/GcmRegistrar;

    # getter for: Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/GcmRegistrar;->access$100(Lcom/parse/GcmRegistrar;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar$2;->this$0:Lcom/parse/GcmRegistrar;

    const/4 v2, 0x0

    # setter for: Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;
    invoke-static {v0, v2}, Lcom/parse/GcmRegistrar;->access$202(Lcom/parse/GcmRegistrar;Lcom/parse/GcmRegistrar$Request;)Lcom/parse/GcmRegistrar$Request;

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
