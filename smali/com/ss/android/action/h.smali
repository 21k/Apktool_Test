.class Lcom/ss/android/action/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ss/android/action/g;


# direct methods
.method constructor <init>(Lcom/ss/android/action/g;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ss/android/action/h;->a:Lcom/ss/android/action/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ss/android/action/h;->a:Lcom/ss/android/action/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/action/g;->c(Z)V

    .line 61
    return-void
.end method
