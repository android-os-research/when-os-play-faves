.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper$ProfileState;
.super Ljava/lang/Object;
.source "KnoxVpnHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileState"
.end annotation


# static fields
.field public static final CONNECTED:I = 0x4

.field public static final CONNECTING:I = 0x2

.field public static final DELETED:I = 0x6

.field public static final DISCONNECTING:I = 0x3

.field public static final FAILED:I = 0x5

.field public static final IDLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
