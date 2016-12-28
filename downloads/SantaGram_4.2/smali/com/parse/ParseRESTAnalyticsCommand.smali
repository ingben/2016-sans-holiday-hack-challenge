.class Lcom/parse/ParseRESTAnalyticsCommand;
.super Lcom/parse/ParseRESTCommand;


# static fields
.field static final EVENT_APP_OPENED:Ljava/lang/String; = "AppOpened"

.field private static final KEY_AT:Ljava/lang/String; = "at"

.field private static final KEY_DIMENSIONS:Ljava/lang/String; = "dimensions"

.field private static final KEY_PUSH_HASH:Ljava/lang/String; = "push_hash"

.field private static final PATH:Ljava/lang/String; = "events/%s"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public static trackAppOpenedCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;
    .locals 2

    const-string v0, "AppOpened"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/parse/ParseRESTAnalyticsCommand;->trackEventCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;

    move-result-object v0

    return-object v0
.end method

.method static trackEventCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTAnalyticsCommand;"
        }
    .end annotation

    const-string v0, "events/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "at"

    invoke-static {}, Lcom/parse/NoObjectsEncoder;->get()Lcom/parse/NoObjectsEncoder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Lcom/parse/NoObjectsEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string v2, "push_hash"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, "dimensions"

    invoke-static {}, Lcom/parse/NoObjectsEncoder;->get()Lcom/parse/NoObjectsEncoder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/parse/NoObjectsEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    new-instance v2, Lcom/parse/ParseRESTAnalyticsCommand;

    sget-object v3, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    invoke-direct {v2, v0, v3, v1, p3}, Lcom/parse/ParseRESTAnalyticsCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static trackEventCommand(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTAnalyticsCommand;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/parse/ParseRESTAnalyticsCommand;->trackEventCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;

    move-result-object v0

    return-object v0
.end method
