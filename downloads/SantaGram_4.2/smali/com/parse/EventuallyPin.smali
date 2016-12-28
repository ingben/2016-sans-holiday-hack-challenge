.class Lcom/parse/EventuallyPin;
.super Lcom/parse/ParseObject;


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_EventuallyPin"
.end annotation


# static fields
.field public static final PIN_NAME:Ljava/lang/String; = "_eventuallyPin"

.field public static final TYPE_COMMAND:I = 0x3

.field public static final TYPE_DELETE:I = 0x2

.field public static final TYPE_SAVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "_EventuallyPin"

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static findAllPinned()La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/EventuallyPin;->findAllPinned(Ljava/util/Collection;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public static findAllPinned(Ljava/util/Collection;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "La/j",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/parse/ParseQuery;

    const-class v1, Lcom/parse/EventuallyPin;

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/Class;)V

    const-string v1, "_eventuallyPin"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseQuery;->ignoreACLs()Lcom/parse/ParseQuery;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v1, "uuid"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseQuery;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    :cond_0
    invoke-virtual {v0}, Lcom/parse/ParseQuery;->findInBackground()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/EventuallyPin$2;

    invoke-direct {v1}, Lcom/parse/EventuallyPin$2;-><init>()V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private static pinEventuallyCommand(ILcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parse/ParseObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "La/j",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/EventuallyPin;

    invoke-direct {v0}, Lcom/parse/EventuallyPin;-><init>()V

    const-string v1, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string v1, "object"

    invoke-virtual {v0, v1, p1}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "operationSetUUID"

    invoke-virtual {v0, v1, p2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "sessionToken"

    invoke-virtual {v0, v1, p3}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz p4, :cond_3

    const-string v1, "command"

    invoke-virtual {v0, v1, p4}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string v1, "_eventuallyPin"

    invoke-virtual {v0, v1}, Lcom/parse/EventuallyPin;->pinInBackground(Ljava/lang/String;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/EventuallyPin$1;

    invoke-direct {v2, v0}, Lcom/parse/EventuallyPin$1;-><init>(Lcom/parse/EventuallyPin;)V

    invoke-virtual {v1, v2}, La/j;->a(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public static pinEventuallyCommand(Lcom/parse/ParseObject;Lcom/parse/ParseRESTCommand;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseRESTCommand;",
            ")",
            "La/j",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    const-string v3, "classes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/a/b$b;

    sget-object v3, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/a/b$b;

    sget-object v3, Lcom/parse/a/b$b;->c:Lcom/parse/a/b$b;

    if-ne v2, v3, :cond_2

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/parse/ParseRESTCommand;->getOperationSetUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parse/ParseRESTCommand;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p0, v2, v3, v0}, Lcom/parse/EventuallyPin;->pinEventuallyCommand(ILcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)La/j;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v2, p1, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/a/b$b;

    sget-object v3, Lcom/parse/a/b$b;->d:Lcom/parse/a/b$b;

    if-ne v2, v3, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/parse/ParseRESTCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCommand()Lcom/parse/ParseRESTCommand;
    .locals 3

    const-string v0, "command"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/parse/ParseRESTCommand;->isValidCommandJSONObject(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/parse/ParseRESTCommand;->fromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/parse/ParseRESTCommand;->isValidOldFormatCommandJSONObject(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Failed to load command from JSON."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getObject()Lcom/parse/ParseObject;
    .locals 1

    const-string v0, "object"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public getOperationSetUUID()Ljava/lang/String;
    .locals 1

    const-string v0, "operationSetUUID"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    const-string v0, "sessionToken"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    const-string v0, "uuid"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method needsDefaultACL()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
