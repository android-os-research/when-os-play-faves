.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants$ProfileState;
.super Ljava/lang/Object;
.source "KnoxVpnConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileState"
.end annotation


# static fields
.field public static final ACTIVATE_CONNECTED:I = 0x4

.field public static final ACTIVATE_CONNECTING:I = 0x2

.field public static final ACTIVATE_DISCONNECTING:I = 0x3

.field public static final ACTIVATE_FAILED:I = 0x5

.field public static final ACTIVATE_IDLE:I = 0x1

.field public static final DEACTIVATED_CONNECTED:I = 0x68

.field public static final DEACTIVATED_CONNECTING:I = 0x66

.field public static final DEACTIVATED_DISCONNECTING:I = 0x67

.field public static final DEACTIVATED_FAILED:I = 0x69

.field public static final DEACTIVATED_IDLE:I = 0x65

.field public static final UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
