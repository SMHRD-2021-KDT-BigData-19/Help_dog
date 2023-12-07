package com.smhrd.domain;

public class petMember {
				private String id;
				private String petName;
				private String petType;
				private String petGender;
				private String petNe;
				private String petBirth;
				private String petSign;

				
			public petMember(String id, String petName, String petType, String petGender, String petNe,
						String petBirth, String petSign) {
					super();
					this.id = id;
					this.petName = petName;
					this.petType = petType;
					this.petGender = petGender;
					this.petNe = petNe;
					this.petBirth = petBirth;
					this.petSign = petSign;
				}

			public petMember(String id, String petName) {
					super();
					this.id = id;
					this.petName = petName;
				}//selectpet할 객체

			public petMember(String id, String petType, String petGender, String petNe, String petBirth,String petSign) {
					super();
					this.id = id;
					this.petType = petType;
					this.petGender = petGender;
					this.petNe = petNe;
					this.petBirth = petBirth;
					this.petSign = petSign;
				}

				public String getPetName() {
				return petName;
			}

			public void setPetName(String petName) {
				this.petName = petName;
			}

				public String getId() {
					return id;
				}

				public void setId(String id) {
					this.id = id;
				}

				/*
				 * public String getPetName() { return petName; }
				 */

				/*
				 * public void setPetName(String petName) { this.petName = petName; }
				 */

				public String getPetType() {
					return petType;
				}

				public void setPetType(String petType) {
					this.petType = petType;
				}

				public String getPetGender() {
					return petGender;
				}

				public void setPetGender(String petGender) {
					this.petGender = petGender;
				}

				public String getPetNe() {
					return petNe;
				}

				public void setPetNe(String petNe) {
					this.petNe = petNe;
				}

				public String getPetBirth() {
					return petBirth;
				}

				public void setPetBirth(String petBirth) {
					this.petBirth = petBirth;
				}

				public String getPetSign() {
					return petSign;
				}

				public void setPetSign(String petSign) {
					this.petSign = petSign;
				}

				@Override
				public String toString() {
					return "petMember [id=" + id + ", petName=" + petName + ", petType=" + petType + ", petGender="
							+ petGender + ", petNe=" + petNe + ", petBirth=" + petBirth + ", petSign=" + petSign + "]";
				}

				
		
		
}
