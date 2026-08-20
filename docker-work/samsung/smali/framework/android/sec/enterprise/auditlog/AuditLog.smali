.class public Landroid/sec/enterprise/auditlog/AuditLog;
.super Ljava/lang/Object;
.source "AuditLog.java"


# static fields
.field public static final whitelist ALERT:I = 0x1

.field public static final whitelist AUDIT_LOG_GROUP_APPLICATION:I = 0x5

.field public static final whitelist AUDIT_LOG_GROUP_EVENTS:I = 0x4

.field public static final whitelist AUDIT_LOG_GROUP_NETWORK:I = 0x3

.field public static final whitelist AUDIT_LOG_GROUP_SECURITY:I = 0x1

.field public static final whitelist AUDIT_LOG_GROUP_SYSTEM:I = 0x2

.field public static final whitelist CRITICAL:I = 0x2

.field public static final whitelist ERROR:I = 0x3

.field public static final whitelist NOTICE:I = 0x5

.field private static final blacklist TAG:Ljava/lang/String; = "AuditLog"

.field public static final whitelist WARNING:I = 0x4


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isAuditLogEnabledAsUser(I)Z
    .registers 3
    .param p0, "userId"    # I

    .line 253
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 254
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_b

    .line 255
    invoke-interface {v0, p0}, Landroid/sec/enterprise/IEDMProxy;->isAuditLogEnabledAsUser(I)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    .line 259
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_b
    goto :goto_d

    .line 257
    :catch_c
    move-exception v0

    .line 260
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist log(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "uid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;

    .line 102
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 103
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_10

    .line 104
    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Landroid/sec/enterprise/IEDMProxy;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 109
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_10
    goto :goto_12

    .line 107
    :catch_11
    move-exception v0

    .line 110
    :goto_12
    return-void
.end method

.method public static blacklist log(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "uid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;
    .param p6, "redactedLogMessage"    # Ljava/lang/String;

    .line 116
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 117
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_11

    .line 118
    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/sec/enterprise/IEDMProxy;->RedactedAuditLogger(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 123
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_11
    goto :goto_13

    .line 121
    :catch_12
    move-exception v0

    .line 124
    :goto_13
    return-void
.end method

.method public static blacklist logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "uid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .line 160
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 161
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_11

    .line 162
    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/sec/enterprise/IEDMProxy;->AuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 167
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_11
    goto :goto_13

    .line 165
    :catch_12
    move-exception v0

    .line 168
    :goto_13
    return-void
.end method

.method public static blacklist logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 18
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "uid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;
    .param p6, "redactedLogMessage"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 175
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 176
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_14

    .line 177
    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Landroid/sec/enterprise/IEDMProxy;->RedactedAuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 182
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_14
    goto :goto_16

    .line 180
    :catch_15
    move-exception v0

    .line 183
    :goto_16
    return-void
.end method

.method public static blacklist logMMS(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "pid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;

    .line 136
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 137
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_10

    .line 138
    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Landroid/sec/enterprise/IEDMProxy;->AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 143
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_10
    goto :goto_12

    .line 141
    :catch_11
    move-exception v0

    .line 144
    :goto_12
    return-void
.end method

.method public static blacklist logPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "pid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;

    .line 192
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 193
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_10

    .line 194
    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Landroid/sec/enterprise/IEDMProxy;->AuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 199
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_10
    goto :goto_12

    .line 197
    :catch_11
    move-exception v0

    .line 200
    :goto_12
    return-void
.end method

.method public static blacklist logPrivileged(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "pid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;
    .param p6, "redactedLogMessage"    # Ljava/lang/String;

    .line 206
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 207
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_11

    .line 208
    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/sec/enterprise/IEDMProxy;->RedactedAuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 213
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_11
    goto :goto_13

    .line 211
    :catch_12
    move-exception v0

    .line 214
    :goto_13
    return-void
.end method

.method public static blacklist logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "pid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .line 223
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 224
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_11

    .line 225
    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Landroid/sec/enterprise/IEDMProxy;->AuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 230
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_11
    goto :goto_13

    .line 228
    :catch_12
    move-exception v0

    .line 231
    :goto_13
    return-void
.end method

.method public static blacklist logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 18
    .param p0, "severityGrade"    # I
    .param p1, "moduleGroup"    # I
    .param p2, "outcome"    # Z
    .param p3, "pid"    # I
    .param p4, "swComponent"    # Ljava/lang/String;
    .param p5, "logMessage"    # Ljava/lang/String;
    .param p6, "redactedLogMessage"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 238
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    .line 239
    .local v0, "lService":Landroid/sec/enterprise/IEDMProxy;
    if-eqz v0, :cond_14

    .line 240
    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Landroid/sec/enterprise/IEDMProxy;->RedactedAuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 245
    .end local v0    # "lService":Landroid/sec/enterprise/IEDMProxy;
    :cond_14
    goto :goto_16

    .line 243
    :catch_15
    move-exception v0

    .line 246
    :goto_16
    return-void
.end method
