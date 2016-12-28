.class final Lcom/parse/ParseFieldOperations;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;
    }
.end annotation


# static fields
.field private static opDecoderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/parse/ParseFieldOperations;->opDecoderMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseFieldOperation;
    .locals 4

    const-string v0, "__op"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/parse/ParseFieldOperations;->opDecoderMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode operation of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;->decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseFieldOperation;

    move-result-object v0

    return-object v0
.end method

.method static jsonArrayAsArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v1
.end method

.method private static registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V
    .locals 1

    sget-object v0, Lcom/parse/ParseFieldOperations;->opDecoderMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static registerDefaultDecoders()V
    .locals 2

    const-string v0, "Batch"

    new-instance v1, Lcom/parse/ParseFieldOperations$1;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$1;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    const-string v0, "Delete"

    new-instance v1, Lcom/parse/ParseFieldOperations$2;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$2;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    const-string v0, "Increment"

    new-instance v1, Lcom/parse/ParseFieldOperations$3;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$3;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    const-string v0, "Add"

    new-instance v1, Lcom/parse/ParseFieldOperations$4;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$4;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    const-string v0, "AddUnique"

    new-instance v1, Lcom/parse/ParseFieldOperations$5;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$5;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    const-string v0, "Remove"

    new-instance v1, Lcom/parse/ParseFieldOperations$6;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$6;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    const-string v0, "AddRelation"

    new-instance v1, Lcom/parse/ParseFieldOperations$7;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$7;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    const-string v0, "RemoveRelation"

    new-instance v1, Lcom/parse/ParseFieldOperations$8;

    invoke-direct {v1}, Lcom/parse/ParseFieldOperations$8;-><init>()V

    invoke-static {v0, v1}, Lcom/parse/ParseFieldOperations;->registerDecoder(Ljava/lang/String;Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;)V

    return-void
.end method
