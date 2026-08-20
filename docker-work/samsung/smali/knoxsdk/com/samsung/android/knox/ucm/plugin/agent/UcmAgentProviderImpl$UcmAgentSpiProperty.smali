.class public interface abstract Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl$UcmAgentSpiProperty;
.super Ljava/lang/Object;
.source "UcmAgentProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UcmAgentSpiProperty"
.end annotation


# static fields
.field public static final greylist KEY_ADMIN_ID:Ljava/lang/String; = "admin_id"

.field public static final greylist KEY_ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final greylist KEY_CALLER_UID:Ljava/lang/String; = "callerUid"

.field public static final greylist KEY_ENTRY_TYPE:Ljava/lang/String; = "entryType"

.field public static final greylist KEY_EXTRA_ARGS:Ljava/lang/String; = "extraArgs"

.field public static final greylist KEY_ISALLOWWIFI:Ljava/lang/String; = "allow_wifi"

.field public static final greylist KEY_ISMANAGED:Ljava/lang/String; = "ismanaged"

.field public static final greylist KEY_IS_CALLER_MDM:Ljava/lang/String; = "ismdm"

.field public static final greylist KEY_KEYSIZE:Ljava/lang/String; = "keysize"

.field public static final greylist KEY_OWNER_ID:Ljava/lang/String; = "ownerUid"

.field public static final greylist KEY_REMOVABLE_USER_CERTIFICATES_LIST:Ljava/lang/String; = "removable_user_certificates_list"

.field public static final greylist KEY_RENEW_CERT:Ljava/lang/String; = "renew"

.field public static final greylist KEY_RESOURCE_ID:Ljava/lang/String; = "resource"

.field public static final greylist KEY_SECRET_KEY:Ljava/lang/String; = "secret_key"

.field public static final greylist KEY_STORAGE_OPTION:Ljava/lang/String; = "ese_storage_option"

.field public static final greylist KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final greylist PRIVATE_RESOURCE:I = 0x2

.field public static final greylist SHARED_KEYCHAIN_RESOURCE:I = 0x1

.field public static final greylist SHARED_WIFI_RESOURCE:I = 0x3

.field public static final greylist STORE_INSIDE_CS:I = 0x65

.field public static final greylist STORE_OUTSIDE_CS:I = 0x66

.field public static final greylist UCS_ALL_RESOURCE:I = 0x4


# virtual methods
.method public abstract greylist getErrorCode()I
.end method

.method public abstract greylist getProperty()Landroid/os/Bundle;
.end method

.method public abstract greylist setErrorCode(I)V
.end method

.method public abstract greylist setProperty(Landroid/os/Bundle;)V
.end method
