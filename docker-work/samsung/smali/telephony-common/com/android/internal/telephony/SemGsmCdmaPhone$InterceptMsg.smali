.class public Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;
.super Ljava/lang/Object;
.source "SemGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemGsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterceptMsg"
.end annotation


# static fields
.field public static final blacklist IS_VONR_ENABLED:I = 0x2

.field public static final blacklist NOTIFY_MSG:I = 0x1


# instance fields
.field public blacklist cmd:I

.field public blacklist notiMsg:Landroid/os/Message;

.field public blacklist resultObj:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;ILandroid/os/Message;)V
    .registers 4

    .line 1634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1635
    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;->resultObj:Ljava/lang/Object;

    .line 1636
    iput p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;->cmd:I

    .line 1637
    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;->notiMsg:Landroid/os/Message;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Landroid/os/Message;)V
    .registers 4

    const/4 v0, 0x1

    .line 1640
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone$InterceptMsg;-><init>(Ljava/lang/Object;ILandroid/os/Message;)V

    return-void
.end method
