.class final Lcom/parse/ParseFieldOperations$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFieldOperations;->registerDefaultDecoders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseFieldOperation;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "ops"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/parse/ParseFieldOperations;->decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseFieldOperation;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/parse/ParseFieldOperation;->mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
