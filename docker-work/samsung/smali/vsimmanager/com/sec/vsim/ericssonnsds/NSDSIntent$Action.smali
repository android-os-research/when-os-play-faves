.class public Lcom/sec/vsim/ericssonnsds/NSDSIntent$Action;
.super Ljava/lang/Object;
.source "NSDSIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/NSDSIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final ACCESS_STEERING_UPDATED:Ljava/lang/String; = "com.samsung.nsds.action.ACCESS_STEERING_UPDATED"

.field public static final ACCOUNT_LOGIN_COMPLETED:Ljava/lang/String; = "com.samsung.nsds.action.ACCOUNT_LOGIN_COMPLETED"

.field public static final ACCOUNT_LOGOUT_COMPLETED:Ljava/lang/String; = "com.samsung.nsds.action.ACCOUNT_LOGOUT_COMPLETED"

.field public static final ACTION_BOOTUP_INIT:Ljava/lang/String; = "com.samsung.nsds.action.ACTION_BOOTUP_INIT"

.field public static final ACTION_CONFIRM_PUSH_MSG_DELIVERY:Ljava/lang/String; = "com.samsung.nsds.action.ACTION_CONFIRM_PUSH_MSG_DELIVERY"

.field public static final ACTION_CONNECTIVITY_CHANGE:Ljava/lang/String; = "com.samsung.nsds.action.ACTION_CONNECTIVITY_CHANGE"

.field public static final ACTION_REFRESH_DEVICE_CONFIG:Ljava/lang/String; = "com.samsung.nsds.action.REFRESH_DEVICE_CONFIG"

.field public static final ACTION_REFRESH_DEVICE_INFO:Ljava/lang/String; = "com.samsung.nsds.action.REFRESH_DEVICE_INFO"

.field public static final ACTION_REFRESH_GCM_TOKEN:Ljava/lang/String; = "com.samsung.nsds.action.ACTION_REFRESH_GCM_TOKEN"

.field public static final ACTION_REQUEST_LOGIN:Ljava/lang/String; = "com.samsung.nsds.action.ACTION_REQUEST_LOGIN_PAGE"

.field public static final ACTION_REQUEST_LOGOUT:Ljava/lang/String; = "com.samsung.nsds.action.ACTION_REQUEST_LOGOUT"

.field public static final ACTION_SIM_DEVICE_ACTIVATION:Ljava/lang/String; = "com.samsung.nsds.action.ACTION_SIM_DEVICE_ACTIVATION"

.field public static final ACTION_SIM_DEVICE_DEACTIVATION:Ljava/lang/String; = "com.samsung.nsds.action.ACTION_SIM_DEVICE_DEACTIVATION"

.field public static final ACTION_UPDATE_DEVICE_NAME_IN_DB:Ljava/lang/String; = "com.samsung.nsds.action.UPDATE_DEVICE_NAME_IN_DB"

.field public static final ACTION_UPDATE_LINE_NAME_IN_DB:Ljava/lang/String; = "com.samsung.nsds.action.UPDATE_LINE_NAME_IN_DB"

.field public static final ACTION_UPDATE_PENDING_LINE_STATUS:Ljava/lang/String; = "com.samsung.nsds.action.UPDATE_PENDING_LINE_STATUS"

.field public static final ACTION_UPDATE_PUSH_TOKEN_IN_SES:Ljava/lang/String; = "com.samsung.nsds.action.ACTION_UPDATE_PUSH_TOKEN_IN_SES"

.field public static final ALL_CONTACTS_DOWNLOADED:Ljava/lang/String; = "com.samsung.nsds.action.ALL_CONTACTS_DOWNLOADED"

.field public static final ALL_CONTACTS_UPLOADED:Ljava/lang/String; = "com.samsung.nsds.action.ALL_CONTACTS_UPLOADED"

.field public static final ALL_LINE_STATUS_CHANGED:Ljava/lang/String; = "com.samsung.nsds.action.ALL_LINE_STATUS_CHANGED"

.field public static final DEVICES_ADDED:Ljava/lang/String; = "com.samsung.nsds.action.DEVICE_ADDED"

.field public static final DEVICES_REMOVED:Ljava/lang/String; = "com.samsung.nsds.action.DEVICE_REMOVED"

.field public static final DEVICE_CONFIG_CHANGED:Ljava/lang/String; = "com.samsung.nsds.action.DEVICE_CONFIG_CHANGED"

.field public static final DEVICE_CONFIG_UPDATED:Ljava/lang/String; = "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

.field public static final DEVICE_INFO_REFRESHED:Ljava/lang/String; = "com.samsung.nsds.action.DEVICE_INFO_REFRESHED"

.field public static final DEVICE_NAME_UPDATED:Ljava/lang/String; = "com.samsung.nsds.action.DEVICE_NAME_UPDATED"

.field public static final DEVICE_PUSH_TOKEN_READY:Ljava/lang/String; = "com.samsung.nsds.action.DEVICE_PUSH_TOKEN_READY"

.field public static final E911_AID_INFO_RECEIVED:Ljava/lang/String; = "com.samsung.nsds.action.E911_AID_INFO_RECEIVED"

.field public static final ENTITLEMENT_AND_LOCTC_CHECK_COMPLETED:Ljava/lang/String; = "com.samsung.nsds.action.ENTITLEMENT_AND_LOCTC_CHECK_COMPLETED"

.field public static final ENTITLEMENT_CHECK_COMPLETED:Ljava/lang/String; = "com.samsung.nsds.action.ENTITLEMENT_CHECK_COMPLETED"

.field public static final IS_PRIMARY_ACTIVATED:Ljava/lang/String; = "com.samsung.nsds.action.IS_PRIMARY_ACTIVATED"

.field public static final LINES_ACTIVATED:Ljava/lang/String; = "com.samsung.nsds.action.LINES_ACTIVATED"

.field public static final LINES_ADDED:Ljava/lang/String; = "com.samsung.nsds.action.LINES_ADDED"

.field public static final LINES_DEACTIVATED:Ljava/lang/String; = "com.samsung.nsds.action.LINES_DEACTIVATED"

.field public static final LINES_READY_STATUS_UPDATED:Ljava/lang/String; = "com.samsung.nsds.action.LINES_READY_STATUS_UPDATED"

.field public static final LINES_REMOVED:Ljava/lang/String; = "com.samsung.nsds.action.LINES_REMOVED"

.field public static final LINE_ACTIVATED:Ljava/lang/String; = "com.samsung.nsds.action.LINE_ACTIVATED"

.field public static final LINE_ACTIVATED_BY_OTHERS:Ljava/lang/String; = "com.samsung.nsds.action.LINE_ACTIVATED_BY_OTHERS"

.field public static final LINE_DEACTIVATED:Ljava/lang/String; = "com.samsung.nsds.action.LINE_DEACTIVATED"

.field public static final LINE_NAME_UPDATED:Ljava/lang/String; = "com.samsung.nsds.action.LINE_NAME_UPDATED"

.field public static final LOC_AND_TC_UPDATED:Ljava/lang/String; = "com.samsung.nsds.action.LOC_AND_TC_UPDATED"

.field public static final MSISDN_AUTHORIZED:Ljava/lang/String; = "com.samsung.nsds.action.MSISDN_AUTHORIZED"

.field public static final MSISDN_AUTH_REQUESTED:Ljava/lang/String; = "com.samsung.nsds.action.MSISDN_AUTH_REQUESTED"

.field public static final RECIEVED_GCM_EVENT_NOTIFICATION:Ljava/lang/String; = "com.samsung.nsds.action.RECIEVED_GCM_EVENT_NOTIFICATION"

.field public static final RECIEVED_PUSH_NOTIFICATION:Ljava/lang/String; = "com.samsung.nsds.action.RECIEVED_PUSH_NOTIFICATION"

.field public static final SERVICES_ACTIVATED:Ljava/lang/String; = "com.samsung.nsds.action.SERVICES_ACTIVATED"

.field public static final SERVICES_ADDED:Ljava/lang/String; = "com.samsung.nsds.action.SERVICES_ADDED"

.field public static final SERVICES_DEACTIVATEED:Ljava/lang/String; = "com.samsung.nsds.action.SERVICES_DEACTIVATED"

.field public static final SERVICES_REMOVED:Ljava/lang/String; = "com.samsung.nsds.action.SERVICES_REMOVED"

.field public static final SIM_DEVICE_ACTIVATED:Ljava/lang/String; = "com.samsung.nsds.action.SIM_DEVICE_ACTIVATED"

.field public static final SIM_DEVICE_DEACTIVATED:Ljava/lang/String; = "com.samsung.nsds.action.SIM_DEVICE_DEACTIVATED"

.field public static final SIM_SWAP_COMPLETED:Ljava/lang/String; = "com.samsung.nsds.action.SIM_SWAP_COMPLETED"

.field public static final SIT_REFRESHED:Ljava/lang/String; = "com.samsung.nsds.action.SIT_REFRESHED"

.field public static final UPDTAED_CONTACT_UPLOADED:Ljava/lang/String; = "com.samsung.nsds.action.UPDTAED_CONTACT_UPLOADED"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
