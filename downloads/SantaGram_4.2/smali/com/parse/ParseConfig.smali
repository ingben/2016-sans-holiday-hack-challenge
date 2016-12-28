.class public Lcom/parse/ParseConfig;
.super Ljava/lang/Object;


# static fields
.field static final taskQueue:Lcom/parse/TaskQueue;


# instance fields
.field final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    sput-object v0, Lcom/parse/ParseConfig;->taskQueue:Lcom/parse/TaskQueue;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(La/j;)La/j;
    .locals 1

    invoke-static {p0}, Lcom/parse/ParseConfig;->getAsync(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method static decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseConfig;
    .locals 2

    invoke-virtual {p1, p0}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "params"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Object did not contain the \'params\' key."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/parse/ParseConfig;

    invoke-direct {v1, v0}, Lcom/parse/ParseConfig;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public static get()Lcom/parse/ParseConfig;
    .locals 1

    invoke-static {}, Lcom/parse/ParseConfig;->getInBackground()La/j;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseConfig;

    return-object v0
.end method

.method private static getAsync(La/j;)La/j;
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
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseConfig$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseConfig$2;-><init>(La/j;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method static getConfigController()Lcom/parse/ParseConfigController;
    .locals 1

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getConfigController()Lcom/parse/ParseConfigController;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentConfig()Lcom/parse/ParseConfig;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/parse/ParseConfig;->getConfigController()Lcom/parse/ParseConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseConfigController;->getCurrentConfigController()Lcom/parse/ParseCurrentConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCurrentConfigController;->getCurrentConfigAsync()La/j;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseConfig;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/parse/ParseConfig;

    invoke-direct {v0}, Lcom/parse/ParseConfig;-><init>()V

    goto :goto_0
.end method

.method public static getInBackground()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/parse/ParseConfig;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseConfig$1;

    invoke-direct {v1}, Lcom/parse/ParseConfig$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public static getInBackground(Lcom/parse/ConfigCallback;)V
    .locals 1

    invoke-static {}, Lcom/parse/ParseConfig;->getInBackground()La/j;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;)La/j;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/Date;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/ParseConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/PointerEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lorg/json/JSONArray;

    move-object p2, v0

    :cond_1
    return-object p2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/PointerEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    move-object p2, v0

    :cond_1
    return-object p2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/List;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/ParseConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/Map;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Number;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method getParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getParseFile(Ljava/lang/String;Lcom/parse/ParseFile;)Lcom/parse/ParseFile;

    move-result-object v0

    return-object v0
.end method

.method public getParseFile(Ljava/lang/String;Lcom/parse/ParseFile;)Lcom/parse/ParseFile;
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/parse/ParseFile;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/parse/ParseFile;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getParseGeoPoint(Ljava/lang/String;)Lcom/parse/ParseGeoPoint;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getParseGeoPoint(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getParseGeoPoint(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseGeoPoint;
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/parse/ParseGeoPoint;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/parse/ParseGeoPoint;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    :goto_1
    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParseConfig["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
