.class Lcom/parse/AbstractQueryController$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/AbstractQueryController;->getFirstAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;
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
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/AbstractQueryController;


# direct methods
.method constructor <init>(Lcom/parse/AbstractQueryController;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/AbstractQueryController$1;->this$0:Lcom/parse/AbstractQueryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Lcom/parse/ParseObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0

    :cond_1
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x65

    const-string v2, "no results found for query"

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/AbstractQueryController$1;->then(La/j;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
