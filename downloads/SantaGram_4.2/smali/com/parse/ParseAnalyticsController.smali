.class Lcom/parse/ParseAnalyticsController;
.super Ljava/lang/Object;


# instance fields
.field eventuallyQueue:Lcom/parse/ParseEventuallyQueue;


# direct methods
.method public constructor <init>(Lcom/parse/ParseEventuallyQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/ParseAnalyticsController;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    return-void
.end method


# virtual methods
.method public trackAppOpenedInBackground(Ljava/lang/String;Ljava/lang/String;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/parse/ParseRESTAnalyticsCommand;->trackAppOpenedCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseAnalyticsController;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v0

    return-object v0
.end method

.method public trackEventInBackground(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)La/j;
    .locals 3
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
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/parse/ParseRESTAnalyticsCommand;->trackEventCommand(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseAnalyticsController;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v0

    return-object v0
.end method
