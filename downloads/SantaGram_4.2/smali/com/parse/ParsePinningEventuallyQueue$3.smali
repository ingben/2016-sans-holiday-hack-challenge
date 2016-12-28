.class Lcom/parse/ParsePinningEventuallyQueue$3;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue;->pendingCountAsync(La/j;)La/j;
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
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$3;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/parse/EventuallyPin;->findAllPinned()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$3$1;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$3$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$3;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$3;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
