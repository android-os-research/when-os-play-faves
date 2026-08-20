.class public final synthetic Lcom/android/ims/ImsManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/ims/ImsManager$MmTelFeatureConnectionFactory;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist create(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsMmTelFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)Lcom/android/ims/MmTelFeatureConnection;
    .registers 17

    new-instance v8, Lcom/android/ims/MmTelFeatureConnection;

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/ims/MmTelFeatureConnection;-><init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsMmTelFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V

    return-object v8
.end method
