.class final Lcom/parse/ParseAnalytics$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseAnalytics;->trackAppOpenedInBackground(Landroid/content/Intent;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$pushHash:La/g;


# direct methods
.method constructor <init>(La/g;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseAnalytics$1;->val$pushHash:La/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 3
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

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/parse/ParseAnalytics;->getAnalyticsController()Lcom/parse/ParseAnalyticsController;

    move-result-object v2

    iget-object v1, p0, Lcom/parse/ParseAnalytics$1;->val$pushHash:La/g;

    invoke-virtual {v1}, La/g;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/parse/ParseAnalyticsController;->trackAppOpenedInBackground(Ljava/lang/String;Ljava/lang/String;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseAnalytics$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
