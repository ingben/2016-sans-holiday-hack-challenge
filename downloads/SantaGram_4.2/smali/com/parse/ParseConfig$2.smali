.class final Lcom/parse/ParseConfig$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseConfig;->getAsync(La/j;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Ljava/lang/String;",
        "La/j",
        "<",
        "Lcom/parse/ParseConfig;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$toAwait:La/j;


# direct methods
.method constructor <init>(La/j;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseConfig$2;->val$toAwait:La/j;

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
            "Ljava/lang/String;",
            ">;)",
            "La/j",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/parse/ParseConfig$2;->val$toAwait:La/j;

    new-instance v2, Lcom/parse/ParseConfig$2$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseConfig$2$1;-><init>(Lcom/parse/ParseConfig$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig$2;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
