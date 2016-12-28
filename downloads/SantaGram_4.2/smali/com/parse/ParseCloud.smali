.class public final Lcom/parse/ParseCloud;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callFunction(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/parse/ParseCloud;->callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;)La/j;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseCloud$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseCloud$1;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public static callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/parse/FunctionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/parse/FunctionCallback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/parse/ParseCloud;->callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;)La/j;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;)La/j;

    return-void
.end method

.method static getCloudCodeController()Lcom/parse/ParseCloudCodeController;
    .locals 1

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getCloudCodeController()Lcom/parse/ParseCloudCodeController;

    move-result-object v0

    return-object v0
.end method
