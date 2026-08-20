.class public Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;
.super Ljava/lang/Object;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleKeyGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyHandlerObj"
.end annotation


# instance fields
.field public event:Landroid/view/KeyEvent;

.field public policyFlags:I

.field public rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

.field public final synthetic this$0:Lcom/android/server/policy/SingleKeyGestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector;Landroid/view/KeyEvent;Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)V
    .registers 5

    .line 874
    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iput-object p2, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->event:Landroid/view/KeyEvent;

    .line 876
    iput-object p3, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    .line 877
    iput p4, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->policyFlags:I

    return-void
.end method


# virtual methods
.method public getKeyEvent()Landroid/view/KeyEvent;
    .registers 1

    .line 881
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->event:Landroid/view/KeyEvent;

    return-object p0
.end method

.method public getPolicyFlags()I
    .registers 1

    .line 889
    iget p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->policyFlags:I

    return p0
.end method

.method public getSingleKeyRule()Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .registers 1

    .line 885
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->rule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return-object p0
.end method
