.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;

.field public final synthetic f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

.field public final synthetic f$10:Lcom/android/server/net/UrspService;

.field public final synthetic f$11:Landroid/os/IBinder;

.field public final synthetic f$12:Landroid/content/Context;

.field public final synthetic f$13:Lcom/samsung/accessory/manager/SAccessoryManager;

.field public final synthetic f$14:Lcom/android/server/CountryDetectorService;

.field public final synthetic f$15:Lcom/android/server/NetworkTimeUpdateService;

.field public final synthetic f$16:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$17:Lcom/android/server/TelephonyRegistry;

.field public final synthetic f$18:Lcom/android/server/media/MediaRouterService;

.field public final synthetic f$19:Z

.field public final synthetic f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

.field public final synthetic f$20:Lcom/android/server/MmsServiceBroker;

.field public final synthetic f$21:Z

.field public final synthetic f$3:Lcom/android/server/ExtendedEthernetService;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/net/ConnectivityManager;

.field public final synthetic f$6:Lcom/android/server/NetworkManagementService;

.field public final synthetic f$7:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final synthetic f$8:Lcom/android/server/VpnManagerService;

.field public final synthetic f$9:Lcom/android/server/VcnManagementService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;Lcom/android/server/ExtendedEthernetService;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/net/UrspService;Landroid/os/IBinder;Landroid/content/Context;Lcom/samsung/accessory/manager/SAccessoryManager;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;ZLcom/android/server/MmsServiceBroker;Z)V
    .registers 25

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/SystemServer;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$3:Lcom/android/server/ExtendedEthernetService;

    move v1, p5

    iput-boolean v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$4:Z

    move-object v1, p6

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$5:Landroid/net/ConnectivityManager;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$6:Lcom/android/server/NetworkManagementService;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$7:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$8:Lcom/android/server/VpnManagerService;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$9:Lcom/android/server/VcnManagementService;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$10:Lcom/android/server/net/UrspService;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$11:Landroid/os/IBinder;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$12:Landroid/content/Context;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$13:Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$14:Lcom/android/server/CountryDetectorService;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$15:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$16:Lcom/android/server/input/InputManagerService;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$17:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$18:Lcom/android/server/media/MediaRouterService;

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$19:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$20:Lcom/android/server/MmsServiceBroker;

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$21:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/SystemServer;

    iget-object v2, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    iget-object v3, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$2:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    iget-object v4, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$3:Lcom/android/server/ExtendedEthernetService;

    iget-boolean v5, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$4:Z

    iget-object v6, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$5:Landroid/net/ConnectivityManager;

    iget-object v7, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$6:Lcom/android/server/NetworkManagementService;

    iget-object v8, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$7:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v9, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$8:Lcom/android/server/VpnManagerService;

    iget-object v10, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$9:Lcom/android/server/VcnManagementService;

    iget-object v11, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$10:Lcom/android/server/net/UrspService;

    iget-object v12, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$11:Landroid/os/IBinder;

    iget-object v13, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$12:Landroid/content/Context;

    iget-object v14, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$13:Lcom/samsung/accessory/manager/SAccessoryManager;

    iget-object v15, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$14:Lcom/android/server/CountryDetectorService;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$15:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$16:Lcom/android/server/input/InputManagerService;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$17:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$18:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$19:Z

    move/from16 v20, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$20:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v21, v1

    iget-boolean v0, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;->f$21:Z

    move/from16 v22, v0

    move-object/from16 v1, v23

    invoke-static/range {v1 .. v22}, Lcom/android/server/SystemServer;->$r8$lambda$yywHzndPMju08ytjpQW_8ms478k(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;Lcom/android/server/ExtendedEthernetService;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/net/UrspService;Landroid/os/IBinder;Landroid/content/Context;Lcom/samsung/accessory/manager/SAccessoryManager;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;ZLcom/android/server/MmsServiceBroker;Z)V

    return-void
.end method
