.class Lcom/ss/android/article/base/feature/feed/a/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ss/android/article/base/feature/feed/a/as;


# direct methods
.method constructor <init>(Lcom/ss/android/article/base/feature/feed/a/as;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ss/android/article/base/feature/feed/a/at;->a:Lcom/ss/android/article/base/feature/feed/a/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ss/android/article/base/feature/feed/a/at;->a:Lcom/ss/android/article/base/feature/feed/a/as;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/feed/a/as;->a:Lcom/ss/android/article/base/feature/feed/a/ar;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/feed/a/ar;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/ss/android/article/base/feature/main/a;

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/ss/android/article/base/feature/feed/a/at;->a:Lcom/ss/android/article/base/feature/feed/a/as;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/feed/a/as;->a:Lcom/ss/android/article/base/feature/feed/a/ar;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/feed/a/ar;->a:Landroid/content/Context;

    check-cast v0, Lcom/ss/android/article/base/feature/main/a;

    .line 82
    invoke-virtual {v0}, Lcom/ss/android/article/base/feature/main/a;->al()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/ss/android/article/base/feature/main/a;->Q()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 87
    instance-of v1, v0, Lcom/ss/android/article/base/feature/feed/activity/a;

    if-eqz v1, :cond_0

    .line 91
    check-cast v0, Lcom/ss/android/article/base/feature/feed/activity/a;

    .line 92
    invoke-virtual {v0}, Lcom/ss/android/article/base/feature/feed/activity/a;->al()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/ss/android/article/base/feature/feed/activity/a;->D()V

    goto :goto_0
.end method
