.class Lcom/ss/android/topic/send/v;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/ss/android/topic/send/t;


# direct methods
.method constructor <init>(Lcom/ss/android/topic/send/t;J)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ss/android/topic/send/v;->b:Lcom/ss/android/topic/send/t;

    iput-wide p2, p0, Lcom/ss/android/topic/send/v;->a:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 73
    invoke-static {}, Lcom/ss/android/topic/send/c;->a()Lcom/ss/android/topic/send/c;

    move-result-object v0

    iget-wide v2, p0, Lcom/ss/android/topic/send/v;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/topic/send/c;->a(J)V

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ss/android/topic/send/v;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
