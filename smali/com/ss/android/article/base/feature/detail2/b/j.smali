.class Lcom/ss/android/article/base/feature/detail2/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ss/android/article/base/feature/detail2/b/a;


# direct methods
.method constructor <init>(Lcom/ss/android/article/base/feature/detail2/b/a;)V
    .locals 0

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/ss/android/article/base/feature/detail2/b/j;->a:Lcom/ss/android/article/base/feature/detail2/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/ss/android/article/base/feature/detail2/b/j;->a:Lcom/ss/android/article/base/feature/detail2/b/a;

    invoke-static {v0}, Lcom/ss/android/article/base/feature/detail2/b/a;->k(Lcom/ss/android/article/base/feature/detail2/b/a;)Lcom/ss/android/article/base/feature/detail/presenter/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/ss/android/article/base/feature/detail2/b/j;->a:Lcom/ss/android/article/base/feature/detail2/b/a;

    invoke-static {v0}, Lcom/ss/android/article/base/feature/detail2/b/a;->k(Lcom/ss/android/article/base/feature/detail2/b/a;)Lcom/ss/android/article/base/feature/detail/presenter/ah;

    move-result-object v0

    const-string v1, ""

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/article/base/feature/detail/presenter/ah;->a(Ljava/lang/String;JZ)V

    .line 1041
    iget-object v0, p0, Lcom/ss/android/article/base/feature/detail2/b/j;->a:Lcom/ss/android/article/base/feature/detail2/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ss/android/article/base/feature/detail2/b/a;->d(Lcom/ss/android/article/base/feature/detail2/b/a;I)I

    .line 1043
    :cond_0
    return-void
.end method
