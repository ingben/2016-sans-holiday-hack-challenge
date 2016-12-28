.class Lcom/parse/OfflineStore$OfflineDecoder;
.super Lcom/parse/ParseDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/OfflineStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OfflineDecoder"
.end annotation


# instance fields
.field private offlineObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "La/j",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parse/OfflineStore;


# direct methods
.method private constructor <init>(Lcom/parse/OfflineStore;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "La/j",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/parse/OfflineStore$OfflineDecoder;->this$0:Lcom/parse/OfflineStore;

    invoke-direct {p0}, Lcom/parse/ParseDecoder;-><init>()V

    iput-object p2, p0, Lcom/parse/OfflineStore$OfflineDecoder;->offlineObjects:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/OfflineStore;Ljava/util/Map;Lcom/parse/OfflineStore$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore$OfflineDecoder;-><init>(Lcom/parse/OfflineStore;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "__type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineObject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/OfflineStore$OfflineDecoder;->offlineObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/j;

    invoke-virtual {v0}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
