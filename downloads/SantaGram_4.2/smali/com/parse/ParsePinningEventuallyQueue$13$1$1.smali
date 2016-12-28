.class Lcom/parse/ParsePinningEventuallyQueue$13$1$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue$13$1;->then(La/j;)La/j;
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
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

.field final synthetic val$executeTask:La/j;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$13$1;La/j;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;->this$2:Lcom/parse/ParsePinningEventuallyQueue$13$1;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;->val$executeTask:La/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;->val$executeTask:La/j;

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13$1$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
