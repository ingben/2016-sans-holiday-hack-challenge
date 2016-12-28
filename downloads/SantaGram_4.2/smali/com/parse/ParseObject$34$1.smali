.class Lcom/parse/ParseObject$34$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$34;->then(La/j;)La/j;
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
.field final synthetic this$0:Lcom/parse/ParseObject$34;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$34;Lcom/parse/ParseObject;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$34$1;->this$0:Lcom/parse/ParseObject$34;

    iput-object p2, p0, Lcom/parse/ParseObject$34$1;->val$object:Lcom/parse/ParseObject;

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

    iget-object v0, p0, Lcom/parse/ParseObject$34$1;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->handleDeleteResultAsync()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$34$1$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$34$1$1;-><init>(Lcom/parse/ParseObject$34$1;La/j;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$34$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
