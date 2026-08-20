.class public Lcom/sec/vsim/namespaces/SoftphoneNamespaces;
.super Ljava/lang/Object;
.source "SoftphoneNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/namespaces/SoftphoneNamespaces$SoftphoneCallHandling;,
        Lcom/sec/vsim/namespaces/SoftphoneNamespaces$SoftphoneAlarm;,
        Lcom/sec/vsim/namespaces/SoftphoneNamespaces$SoftphoneEvents;,
        Lcom/sec/vsim/namespaces/SoftphoneNamespaces$SoftphoneSharedPref;,
        Lcom/sec/vsim/namespaces/SoftphoneNamespaces$SoftphoneModels;,
        Lcom/sec/vsim/namespaces/SoftphoneNamespaces$SoftphoneSettings;
    }
.end annotation


# static fields
.field public static final ERROR:Ljava/lang/String; = "error"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
