.class Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$1;
.super Landroid/app/IProcessObserver$Stub;
.source "HdrDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;


# direct methods
.method constructor <init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;)V
    .registers 2
    .param p1, "this$0"    # Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    .line 73
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayController;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 76
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 79
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 82
    return-void
.end method
