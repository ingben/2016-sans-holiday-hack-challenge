.class Lcom/parse/ParseObjectCurrentCoder;
.super Lcom/parse/ParseObjectCoder;


# static fields
.field private static final INSTANCE:Lcom/parse/ParseObjectCurrentCoder;

.field private static final KEY_CLASS_NAME:Ljava/lang/String; = "classname"

.field private static final KEY_CREATED_AT:Ljava/lang/String; = "createdAt"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_OBJECT_ID:Ljava/lang/String; = "objectId"

.field private static final KEY_OLD_CREATED_AT:Ljava/lang/String; = "created_at"

.field private static final KEY_OLD_OBJECT_ID:Ljava/lang/String; = "id"

.field private static final KEY_OLD_POINTERS:Ljava/lang/String; = "pointers"

.field private static final KEY_OLD_UPDATED_AT:Ljava/lang/String; = "updated_at"

.field private static final KEY_UPDATED_AT:Ljava/lang/String; = "updatedAt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/parse/ParseObjectCurrentCoder;

    invoke-direct {v0}, Lcom/parse/ParseObjectCurrentCoder;-><init>()V

    sput-object v0, Lcom/parse/ParseObjectCurrentCoder;->INSTANCE:Lcom/parse/ParseObjectCurrentCoder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/parse/ParseObjectCoder;-><init>()V

    return-void
.end method

.method public static get()Lcom/parse/ParseObjectCurrentCoder;
    .locals 1

    sget-object v0, Lcom/parse/ParseObjectCurrentCoder;->INSTANCE:Lcom/parse/ParseObjectCurrentCoder;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;>(TT;",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseDecoder;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    :cond_0
    const-string v0, "created_at"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "created_at"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/parse/ParseImpreciseDateFormat;->getInstance()Lcom/parse/ParseImpreciseDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/ParseImpreciseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State$Init;->createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    :cond_1
    const-string v0, "updated_at"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "updated_at"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/parse/ParseImpreciseDateFormat;->getInstance()Lcom/parse/ParseImpreciseDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/ParseImpreciseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State$Init;->updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    :cond_2
    const-string v0, "pointers"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "pointers"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_1
    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "objectId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    :cond_4
    const-string v3, "createdAt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State$Init;->createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    :cond_5
    const-string v3, "updatedAt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State$Init;->updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_7
    return-object p1
.end method

.method public encode(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State;",
            ">(TT;",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-wide/16 v8, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter ParseOperationSet is not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not serialize object to JSON"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    const-string v0, "createdAt"

    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-lez v0, :cond_3

    const-string v0, "updatedAt"

    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "objectId"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v0, "data"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "classname"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1
.end method
