.class public interface abstract annotation Lcom/android/server/wm/OrientationController$RotationCompatReason;
.super Ljava/lang/Object;
.source "OrientationController.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OrientationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "RotationCompatReason"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DISPLAY_COMPAT_POLICY_SUPPORTED_METADATA:I = 0xce

.field public static final DISPLAY_COMPAT_POLICY_SUPPORTED_OVERRIDE:I = 0xcf

.field public static final DISPLAY_COMPAT_POLICY_UNSUPPORTED_OVERRIDE:I = 0x66

.field public static final DISPLAY_FOLDED:I = 0xca

.field public static final IN_ACTIVITY_EMBEDDED:I = 0xd2

.field public static final IN_MULTI_WINDOW_MODE:I = 0xc9

.field public static final NON_DEFAULT_DISPLAY:I = 0xd1

.field public static final POLICY_DISABLED:I = 0xcb

.field public static final RESIZABLE_ACTIVITY:I = 0xd0

.field public static final ROTATION_COMPAT_MODE_DISABLED:I = 0xc8

.field public static final ROTATION_COMPAT_MODE_ENABLED:I = 0x64

.field public static final SIZE_CHANGES_SUPPORTED_METADATA:I = 0xcc

.field public static final SIZE_CHANGES_SUPPORTED_OVERRIDE:I = 0xcd

.field public static final SIZE_CHANGES_UNSUPPORTED_OVERRIDE:I = 0x65

.field public static final UNKNOWN:I = 0x0

.field public static final UNRESIZABLE_ACTIVITY:I = 0x67
