.class Lcom/ss/android/article/base/feature/detail2/g/a/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/ss/android/article/base/feature/detail2/g/a/ad;


# direct methods
.method constructor <init>(Lcom/ss/android/article/base/feature/detail2/g/a/ad;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/ss/android/article/base/feature/detail2/g/a/af;->a:Lcom/ss/android/article/base/feature/detail2/g/a/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 185
    :pswitch_1
    const v0, 0x3f19999a    # 0.6f

    invoke-static {p1, v0}, Lcom/nineoldandroids/b/a;->a(Landroid/view/View;F)V

    goto :goto_0

    .line 189
    :pswitch_2
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/nineoldandroids/b/a;->a(Landroid/view/View;F)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
