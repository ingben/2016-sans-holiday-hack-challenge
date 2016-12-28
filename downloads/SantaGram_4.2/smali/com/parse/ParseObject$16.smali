.class Lcom/parse/ParseObject$16;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->handleSaveEventuallyResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)La/j;
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
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Z)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$16;->this$0:Lcom/parse/ParseObject;

    iput-boolean p2, p0, Lcom/parse/ParseObject$16;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 2
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

    iget-boolean v0, p0, Lcom/parse/ParseObject$16;->val$success:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/parse/ParseEventuallyQueue;->notifyTestHelper(I)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$16;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
