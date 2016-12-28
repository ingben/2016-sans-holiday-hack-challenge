.class final Lcom/parse/ParseRESTObjectBatchCommand$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRESTObjectBatchCommand;->executeBatch(Lcom/parse/ParseHttpClient;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
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
        "Lorg/json/JSONObject;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$batchSize:I

.field final synthetic val$tcss:Ljava/util/List;


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0

    iput p1, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$batchSize:I

    iput-object p2, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$tcss:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseRESTObjectBatchCommand$1;->then(La/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(La/j;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v1, v2

    :goto_0
    iget v0, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$batchSize:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$tcss:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/k;

    invoke-virtual {p1}, La/j;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v0, v3}, La/k;->b(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, La/k;->c()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "results"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    iget v0, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$batchSize:I

    if-eq v4, v0, :cond_3

    move v1, v2

    :goto_2
    iget v0, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$batchSize:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$tcss:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/k;

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Batch command result count expected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$batchSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but was: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, La/k;->b(Ljava/lang/Exception;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    :goto_3
    iget v0, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$batchSize:I

    if-ge v2, v0, :cond_6

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v0, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$tcss:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/k;

    const-string v4, "success"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "success"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const-string v4, "error"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "error"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "error"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4}, La/k;->b(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method
