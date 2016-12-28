.class Lcom/parse/ParseObject$15$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$15;->then(La/j;)La/j;
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
.field final synthetic this$1:Lcom/parse/ParseObject$15;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$15;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$15$1;->this$1:Lcom/parse/ParseObject$15;

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseObject$15$1;->this$1:Lcom/parse/ParseObject$15;

    iget-object v1, v1, Lcom/parse/ParseObject$15;->val$operationSet:Lcom/parse/ParseOperationSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseEventuallyQueue;->waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$15$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
