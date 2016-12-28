.class Lcom/parse/OfflineStore$11;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;
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
        "Ljava/lang/String;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;Lcom/parse/ParseObject;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$11;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$11;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p3, p0, Lcom/parse/OfflineStore$11;->val$object:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x78

    const-string v2, "Attempted to fetch an object offline which was never saved to the offline cache."

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, La/j;->a(Ljava/lang/Exception;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/parse/OfflineStore$11$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineStore$11$1;-><init>(Lcom/parse/OfflineStore$11;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/parse/OfflineStore$11$1;->setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/parse/ParseTraverser;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, La/j;->a(Ljava/util/Collection;)La/j;

    move-result-object v2

    new-instance v3, Lcom/parse/OfflineStore$11$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/parse/OfflineStore$11$2;-><init>(Lcom/parse/OfflineStore$11;Lorg/json/JSONObject;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, La/j;->c(La/h;)La/j;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Exception;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$11;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
