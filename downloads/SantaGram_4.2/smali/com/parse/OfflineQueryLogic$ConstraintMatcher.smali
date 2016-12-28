.class abstract Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/OfflineQueryLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ConstraintMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final user:Lcom/parse/ParseUser;


# direct methods
.method public constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->this$0:Lcom/parse/OfflineQueryLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->user:Lcom/parse/ParseUser;

    return-void
.end method


# virtual methods
.method abstract matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
