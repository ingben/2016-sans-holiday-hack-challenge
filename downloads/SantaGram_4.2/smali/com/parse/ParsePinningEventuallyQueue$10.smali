.class Lcom/parse/ParsePinningEventuallyQueue$10;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue;->runEventuallyAsync(Lcom/parse/EventuallyPin;La/j;)La/j;
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
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;

.field final synthetic val$eventuallyPin:Lcom/parse/EventuallyPin;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$10;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$10;->val$eventuallyPin:Lcom/parse/EventuallyPin;

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

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$10;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$10;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParsePinningEventuallyQueue;->waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$10$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$10$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$10;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$10;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
