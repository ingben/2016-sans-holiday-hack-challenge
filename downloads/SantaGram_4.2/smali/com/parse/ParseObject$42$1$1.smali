.class Lcom/parse/ParseObject$42$1$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$42$1;->then(La/j;)La/j;
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
.field final synthetic this$1:Lcom/parse/ParseObject$42$1;

.field final synthetic val$batchTask:La/j;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$42$1;La/j;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$42$1$1;->this$1:Lcom/parse/ParseObject$42$1;

    iput-object p2, p0, Lcom/parse/ParseObject$42$1$1;->val$batchTask:La/j;

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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject$42$1$1;->val$batchTask:La/j;

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$42$1$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
